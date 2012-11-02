class Feedback < ActiveRecord::Base
  belongs_to :segment
  belongs_to :user
  attr_accessible :score
end
