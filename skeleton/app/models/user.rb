# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    validates :name, presence: true
    
    has_many :enrollments, 
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment
   
    has_many :enrolled_classes,
        primary_key: :id,
        foreign_key: :enrolled_class_id,
        class_name: :Enrollment


        #1. how to update schema
        #2
end
