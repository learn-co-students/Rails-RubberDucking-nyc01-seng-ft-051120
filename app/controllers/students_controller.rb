class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :destroy, :update]

  def index
    @students = Student.all
  end
  def new
  @student=Student.new
  end

  def show
  
  end
  def create
  student=Student.create(student_params(:name, :mod))
  if student.valid?
    redirect_to student_path(student.id)
  else flash[:errors]=student.errors.full_messages
      redirect_to new_student_path
  end
  end
  def edit
  
  end
  def update
  @student.update(student_params(:name))
  if @student.valid?
    redirect_to student_path(@student.id)
  else flash[:errors]=@student.errors.full_messages
      redirect_to edit_student_path(@student.id)
  end
  
  end
  def destroy
    @student.destroy
    redirect_to students_path
  end




  private

  def find_student
    @student=Student.find(params[:id])
  end

  def student_params(*agrs)
    params.require(:student).permit(*agrs)
  end

end
