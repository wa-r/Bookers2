Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about', to: 'homes#about'

  resources :users, only: [:show]
end
