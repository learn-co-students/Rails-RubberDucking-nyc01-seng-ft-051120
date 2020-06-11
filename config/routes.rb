Rails.application.routes.draw do
  resources :ducks
  # , only: [:index, :show, :new, :create, :edit, :update]
  # delete 'ducks/:id/', to: 'ducks#destroy' 
  resources :students
  # , only: [:index, :show, :new, :create, :edit, :update]
end 