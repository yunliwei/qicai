Rails.application.routes.draw do
  resources :tests
  resources :sides
  resources :roses
  resources :wenhuas
  resources :adminwenhuas
  resources :adminproducts
  resources :products
  resources :adminroses
  resources :productclas
<<<<<<< HEAD

  resources :contacts
  resources :abouts
  resources :adminabouts
  resources :configs
=======
  resources :contacts
  resources :abouts
  resources :adminabouts
  resources :adminxinwens
  resources :xinwens
>>>>>>> b36aa55513a78efbb4422d89e6bf319eb7c0a9b8


  namespace :admin do
    resource :sessions,only: [:new]
    match '/signin',to: 'sessions#new',via:'get'
  end
  end
