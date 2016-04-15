Rails.application.routes.draw do

  root 'restaurants#index'

  resources :sessions, only:[:create, :new, :destroy]
  resources :customers, except: [:index]
  resources :restaurants, only:[:show, :index] do
    resources :reservations, only:[:create]
  end

end
