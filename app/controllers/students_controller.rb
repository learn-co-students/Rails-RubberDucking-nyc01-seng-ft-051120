class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show 
    @student = Student.find(params[:id])
  end 

  def new
    @student = Student.new  
  end 

  def create 
    @student = Student.create(student_params)
      # 
      if @student.valid?  
        redirect_to student_path(@student)
      else 
        render :new
        # recognizes only current student 
      end
  end 

  def edit 
    @student = Student.find(params[:id])
  end 

  def update
    @student = Student.find(params[:id]) 
    @student.update(student_params) 
    if @student.valid?
      redirect_to student_path(@student)
    else
      render :edit 
    end 
  end 

  def destroy 
    @student = Student.find(params[:id])
    @student.ducks.destroy_all 
    @student.destroy 
    redirect_to students_path 
  end 

private 

  def student_params 
    params.require(:student).permit(:name, :mod)
  end

end
