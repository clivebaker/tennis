class Location < ActiveRecord::Base
  attr_accessible :name
  
    has_many :lessons
    
        validates_presence_of :name
end
