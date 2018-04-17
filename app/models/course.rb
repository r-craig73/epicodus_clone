class Course < ActiveRecord::Base
  has_many :sections
  validates :language, :presence => true
end
