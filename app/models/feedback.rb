class Feedback < ActiveRecord::Base
  belongs_to :segment
  attr_accessible :score
end
