Rails.application.routes.draw do
  root 'static_pages#home'

  devise_for :admins
  devise_for :users

  resources :posts
  resources :homes
end
