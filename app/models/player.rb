class Player < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :user_id
  
  has_many :lessons
  has_many :tournaments
  belongs_to :user
  
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :user_id
  
  end
