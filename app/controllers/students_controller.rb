class StudentsController < ApplicationController
    before_action :find_student, only: [:show, :edit, :update, :destroy]

  def index 
    @students = Student.all

    # render :index
  end 

  def show 
    # render :show
  end
  
  def new 
    @student = Student.new
    
    render :new 
  end 
  
  def create 
    @student = Student.create(student_params)
    redirect_to  @student
  end 
  
  def edit 
    # @student = Student.find(params[:id])
  end 
  
  def update
    # @student = Student.find(params[:id])
    @student.update(student_params)
    
    redirect_to student_path(@student.id)
    # redirect_to student_path(@student)
    # redirect_to @student
  end 
  
  def destroy 
    # @student = Student.find(params[:id])
    @student.destroy 

    redirect_to students_path

  end 

  private 

  def student_params 
    params.require(:student).permit(:first_name, :last_name)
  end 

  def find_student
    @student = Student.find(params[:id])
  end 
end