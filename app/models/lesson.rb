class Lesson < ActiveRecord::Base
  attr_accessible :coach_id, :date, :location_id, :notes, :type_id, :player_id, :points
  
  has_many :performances
  has_many :disciplines, :through=>:performances
  belongs_to :coach
  belongs_to :location
  belongs_to :player
  belongs_to :type
  
  validates_presence_of :coach_id
  validates_presence_of :player_id
  validates_presence_of :location_id
  

  default_scope order('date DESC')
  
  
end
