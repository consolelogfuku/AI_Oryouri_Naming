Rails.application.routes.draw do

  root to: 'dishes#new'
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, param: :uuid, only: [:create, :show] 
  resources :dishes, param: :uuid do
    get 'result', on: :member
  end
  resources :password_resets, only: %i[new create edit update]
end
