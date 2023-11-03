class Student < ApplicationRecord
    has_many :blogs
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    validates :first_name, :last_name, length: {minimum:10, maximum:50}
    validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\Z/, message: "only letters are allowed"}
    # validates :age, presence: true, numericality: true
    # this check if the value is number 
    
    # custome validation 
    validate :validate_student_age 




    has_and_belongs_to_many :courses
    has_many :student_projects
    has_many :projects, through: :student_projects
    after_save :display_student_age 

    def display_student_age
        if self.date_of_birth.present? 
            age = Date.today.year - date_of_birth.year
            puts "=======age of the student is #{age}"
        else 
            puts "======age cannot be calculated=========="
        end
    end

    def validate_student_age
        if self.date_of_birth.present?
            age = Date.today.year - self.date_of_birth.year
            if age < 15
                errors.add(:age, "please provide valid date of birth, age should be greater than 15")
            end
        end
    end

    def full_name 
        "#{first_name} #{last_name}"
    end

    def age 
        if date_of_birth.present? 
            Date.today.year - date_of_birth.year 
        else 
            nil
        end
    end
end
