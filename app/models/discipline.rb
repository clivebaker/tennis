class Discipline < ActiveRecord::Base
  attr_accessible :name
  
  has_many :performances
  has_many :lessons, :through=>:performances
  
      validates_presence_of :name
end
