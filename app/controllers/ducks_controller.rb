class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show 
    @duck = Duck.find(params[:id])
  end

  def new 
    @duck = Duck.new 
    @students = Student.all 
  end 
  
  def create 
    @duck = Duck.create(duck_params)
    if @duck.valid? 
      redirect_to duck_path(@duck)
    else 
      # flash[:duck_errors] = @duck.errors.full_messages     
      # redirect_to new_duck_path
      @students = Student.all 
      render :new
    end

  end 

  def edit 
    @duck = Duck.find(params[:id])
    @students = Student.all 
  end 

  def update 
    @duck = Duck.find(params[:id])
    @duck.update(duck_params) 
    if @duck.valid? 
      redirect_to duck_path(@duck)
    else 
      @students = Student.all 
      render :edit 
    end
  end 

private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

end
