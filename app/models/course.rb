class Course < ActiveRecord::Base
  has_many :segments

  validates_presence_of :name

  attr_accessible :name
end
