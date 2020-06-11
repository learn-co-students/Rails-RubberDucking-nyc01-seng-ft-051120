class DucksController < ApplicationController

def index
  @ducks = Duck.all
end

def show
  @duck = Duck.find(params[:id])
end

def new
  @duck= Duck.new
  
end

def edit
  @duck =  Duck.find(params[:id])

end

def create
  duck = Duck.create(duck_params)

  if duck.valid?
    redirect_to ducks_path
  else
    flash[:errors] = duck.errors.full_messages
    redirect_to new_duck_path
  end
end

def update
  duck =  Duck.find(params[:id])
  duck.update(duck_params)

  if duck.valid?
    redirect_to ducks_path
  else
    flash[:errors] = ducks.errors.full_messages
    redirect_to edit_duck_path
  end
end

private
def duck_params
  params.require(:duck).permit!
end

end
