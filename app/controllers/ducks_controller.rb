class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update, :destroy]
  def index
    @ducks = Duck.all
  end
  
  def new
    @duck = Duck.new
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def edit
  end

  def update
    @duck.update(duck_params)
    redirect_to duck_path(@duck.id)
  end

  def create
    @duck = Duck.create(duck_params)
    redirect_to ducks_path
  end

  private 
  
  def find_duck
    @duck = Duck.find(params[:id])
  end

  def duck_params
    params.require(:duck).permit!
  end

end
