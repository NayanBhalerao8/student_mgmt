class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :update, :show, :destroy]
    helper_method :formatted_date
    def index 
        @students = Student.all
    end

    def new 
        @student = Student.new
    end

    def create 
        # @student = Student.create(
        #     first_name: params[:student][:first_name],
        #     last_name: params[:student][:last_name],
        #     email: params[:student][:email],
        # )
        @student = Student.create(student_params)
        @student.save
        if @student.save
            puts "\n\n student saved successfully\n "
            redirect_to students_path
        else  
            render :new
        end
    end

    def show 
    end

    def edit 
    end

    def update 
        if @student.update(student_params)
            redirect_to students_path 
        else 
            render :edit
        end
    end

    def destroy 
        @student.destroy
        redirect_to students_path 
    end

    private
    def student_params 
        params.require(:student).permit(:first_name, :last_name,:email,:date_of_birth,:local_address,:permenant_address,:permanent_contact_number,:alternate_contact_number)
    end

    def set_student 
        @student = Student.find(params[:id])
    end

    def formatted_date(date)
        date.strftime('%A, %b, %d,%Y') if date.present? 
    end
end