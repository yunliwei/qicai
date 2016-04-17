Rails.application.routes.draw do
  resources :tests
  resources :sides
  resources :roses
  resources :wenhuas
  resources :adminwenhuas
  resources :news
  resources :adminnews
  resources :adminproducts
  resources :products
  resources :adminroses
  resources :productclas
  namespace :admin do
    resource :sessions,only: [:new]
    match '/signin',to: 'sessions#new',via:'get'
  end
  end