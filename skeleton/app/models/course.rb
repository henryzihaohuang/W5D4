# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

    has_many :enrollments, 
        primary_key: :id,
        foreign_key: :course_id, #this will be the same for both associations
        class_name: :Enrollment # opposite ref.
    

    belongs_to :instructors, 
        primary_key: :id,
        foreign_key: :instructor_id, 
        class_name: :User
    

    #self-referencing other IDs
    has_many :prereq,   #(courses needed for this one course)
        primary_key: :id,
        foreign_key: :prereq_id, #this will be the same for both associations
        class_name: :Course # opposite ref.
    

    belongs_to :req,  #(Courses that have prereq)
        primary_key: :id,
        foreign_key: :prereq_id, #this will be the same for both associations
        class_name: :Course # opposite ref.
    

end
