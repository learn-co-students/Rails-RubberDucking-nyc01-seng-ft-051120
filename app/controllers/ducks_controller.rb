class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :destroy]
  def index
    @ducks = Duck.all
  end
  def show
    
  end
  def new
  @students=Student.all
  @duck=Duck.new
  end
  def create
  @duck=Duck.create(duck_params)
  if @duck.valid?
    redirect_to duck_path(@duck.id)
  
  else flash[:errors]=@duck.errors.full_messages
      redirect_to new_duck_path
  
  end
  end

  def edit
  @students=Student.all
  end

  def update
  @duck.update(duck_params)
  if @duck.valid?
    redirect_to duck_path(@duck.id)
  
  else flash[:errors]=@duck.errors.full_messages
      redirect_to edit_duck_path(@duck.id)
  
  end
  end

  def destroy
  @duck.destroy
  ducks_path
  end






  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck=Duck.find(params[:id])
  end
end
