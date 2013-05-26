require 'capistrano_colors'
require 'bundler/capistrano'
require 'capistrano/ext/multistage'

set :stages, %w(production)
set :default_stage, "production"



capistrano_color_matchers = [
  { :match => /SWITCHING TO/, :color => :magenta, :prio => 10 },
  { :match => /FAILED - SEE REPORT AT END OF LOG/, :color => :red, :prio => 10, :attribute => :blink },
  { :match => /THERE WERE ERRORS ON THE FOLLOWING SITES/, :color => :red, :prio => 10, :attribute => :blink },
]
colorize(capistrano_color_matchers)



set :application, "tennis"

set :scm, :git
set :repository,  "git@github.com:clivebaker/tennis.git"

#set :branch, "carrierwave-migration"


set :user, "rails"

set :scm_verbose, true
set :use_sudo, false
set :keep_releases, 5
set :deploy_via, :remote_cache


# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "cb"                          # Your HTTP server, Apache/etc
role :app, "cb"                          # This may be the same as your `Web` server
role :db,  "cb", :primary => true # This is where Rails migrations will run
#role :db,  "picits"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
  #  run "sudo RAILS_ENV=#{rails_env} #{File.join(current_path,"script","delayed_job")} restart"
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  after 'deploy:update_code', 'deploy:bundle_install'

 after "deploy:bundle_install","deploy:application_symlink"  
 after "deploy:application_symlink","deploy:migrate"  
  
  after "deploy:migrate","deploy:assets"
  
  
  desc "Make symlink for database.yml" 
  task :application_symlink do
    run "rm #{deploy_to}/current"
    run "ln -nfs #{release_path} #{deploy_to}/current" 
    
    run "rm #{release_path}/config/database.yml"
    run "ln -nfs #{deploy_to}/shared/config/database.yml #{release_path}/config/database.yml" 



  end
  
  
  desc "Compile asets"
   task :assets do
     run "cd #{release_path}; RAILS_ENV=#{rails_env} bundle exec rake assets:clean" # --trace
     run "cd #{release_path}; RAILS_ENV=#{rails_env} bundle exec rake assets:precompile" # --trace
   end
  
   desc "Bundle install"
    task :bundle_install do
      run "cd #{release_path}; RAILS_ENV=#{rails_env} bundle install"
    end  
    
    
  
end