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
  resources :configs
  resources :contacts
  resources :abouts
  resources :adminabouts
  resources :adminxinwens
  resources :xinwens
  resources :logins
  resources :sliders
  resources :admins

<<<<<<< HEAD
=======







  namespace :admin do
    resource :sessions,only: [:index]
    match '/signin',to: 'sessions#new',via:'get'
    resource :sessions,only: [:new]
    match '/signin/new',to: 'sessions#new',via:'get'
  end

>>>>>>> 806fc92a786b16c7aa3ea99ac54caa758c54b3fd
end


