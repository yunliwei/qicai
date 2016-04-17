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
<<<<<<< HEAD
=======
  resources :contacts
  resources :abouts
  resources :adminabouts


>>>>>>> b370e51f55c6b65c564466fb10b3e9d6c7947f15
  namespace :admin do
    resource :sessions,only: [:new]
    match '/signin',to: 'sessions#new',via:'get'
  end
  end
