Rails.application.routes.draw do
  root 'home#index'
  
  resources :movies, only: %i[index show]
end
