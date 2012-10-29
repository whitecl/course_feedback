class Segment < ActiveRecord::Base
  belongs_to :course
  has_many :feedbacks
  attr_accessible :name, :released
end
