class Course < ActiveRecord::Base
  validates :name , :description , presence: true

  has_many :classrooms
  has_many :students, through: :classrooms
end
