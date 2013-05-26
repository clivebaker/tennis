class Performance < ActiveRecord::Base
  attr_accessible :discipline_id, :lesson_id, :notes, :points
  
  
  belongs_to :discipline
  belongs_to :lesson
  
  validates_presence_of :discipline_id
  validates_presence_of :points
    
  validates_uniqueness_of :discipline_id, :scope => [:lesson_id]

end
