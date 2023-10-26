class StudentsController < ApplicationController
    before_action :set_student, only: [:edit, :update, :show, :destroy]

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
        params.require(:student).permit(:first_name, :last_name,:email)
    end

    def set_student 
        @student = Student.find(params[:id])
    end

end