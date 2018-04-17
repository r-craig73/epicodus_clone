class Lesson < ActiveRecord::Base
  belongs_to :section
  belongs_to :courses
  validates :name, :presence => true
  validates :content, :presence => true
  validates :number, :presence => true
  validates :section_id, :presence => true
end
