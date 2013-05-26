class FixSpellingMistake < ActiveRecord::Migration
  def up
    
    rename_column :lessons, :privte, :private
  end

  def down
  end
end