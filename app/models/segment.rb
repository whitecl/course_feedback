class Segment < ActiveRecord::Base
  belongs_to :course
  has_many :feedbacks
  attr_accessible :name, :released, :course_id, :attachment
  
  has_attached_file :attachment, :styles => {:thumb => "100x100>"}
end
