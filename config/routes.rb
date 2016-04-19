Rails.application.routes.draw do

  root 'restaurants#index'

  resources :sessions, only:[:create, :new, :destroy]
  resources :customers, except: [:index]
  resources :restaurants do #,only:[:show, :index] do
    resources :reservations
  end

end
