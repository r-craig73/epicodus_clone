class Course < ActiveRecord::Base
  validates :language, :presence => true
end
