class Performance < ActiveRecord::Base
  attr_accessible :discipline_id, :lesson_id, :notes, :points
  
  
  belongs_to :discipline
  belongs_to :lesson
  

end
