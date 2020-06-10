class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :destroy]

  def index
    @ducks = Duck.all
  end

  def show
  end

  def new
    @duck = Duck.new

    @students = Student.all
  end

  def create
    duck = Duck.create(duck_params)

    redirect_to duck_path(duck.id)
    # redirect_to student_path(duck.student_id)
  end

  def edit
    @students = Student.all
  end

  def update
    @duck.update(duck_params)

    redirect_to duck_path(@duck)
  end

  def destroy
    @duck.destroy

    redirect_to ducks_path
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end

end
