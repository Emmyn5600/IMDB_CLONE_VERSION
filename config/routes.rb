Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'home#index'
  
  resources :movies, only: %i[index show]
end
