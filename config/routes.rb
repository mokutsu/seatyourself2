Rails.application.routes.draw do

  root 'restaurants#index'

  resources :sessions, only:[:create, :new, :destroy]
  resources :customers, only:[:new, :create, :show]
  resources :restaurants, only:[:show, :index] do
    resources :reservations, only:[:create]
  end

end
