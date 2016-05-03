Rails.application.routes.draw do

  get 'categories/index'

  get 'categories/view'

  root 'restaurants#index'

  resources :sessions, only:[:create, :new, :destroy]
  resources :customers, except: [:index]
  resources :restaurants do #,only:[:show, :index] do
    resources :reservations
  end
  resources :categories
  # , only:[:index, :show]

end
