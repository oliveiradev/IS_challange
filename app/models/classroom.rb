class Classroom < ActiveRecord::Base
  validates :course_id ,:student_id , presence: true

  belongs_to :student
  belongs_to :course
end
