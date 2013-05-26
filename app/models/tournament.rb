class Tournament < ActiveRecord::Base
  attr_accessible :date, :name, :notes, :player_id, :result
  
  
  belongs_to :player
  
      validates_presence_of :name
      validates_presence_of :player_id
          validates_presence_of :date    
  
end
