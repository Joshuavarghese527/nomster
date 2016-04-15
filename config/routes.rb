Nomster::Application.routes.draw do
  devise_for :users
  root 'places#index'
  
  resources :places do
    resources :comments, only: :create
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # More comments here ......
end