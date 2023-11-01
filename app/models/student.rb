class Student < ApplicationRecord
    has_many :blogs
    validates :first_name, :last_name, :email, presence: true
    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    after_commit :display_student_age 

    def display_student_age
        if self.date_of_birth.present? 
            age = Date.today.year - date_of_birth.year
            puts "age of the student is #{age}"
        else 
            puts "======age cannot be calculated=========="
        end
    end
end
