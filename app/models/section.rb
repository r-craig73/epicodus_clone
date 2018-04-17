class Section < ActiveRecord::Base
  has_many :lessons
  belongs_to :course
  validates :title, :presence => true
end
