Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  
  root 'static_pages#home'

  devise_for :admins
  devise_for :users

  resources :posts
  resources :homes
end
