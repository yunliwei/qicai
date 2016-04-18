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
<<<<<<< HEAD

=======
>>>>>>> 0aa44c2b735474984120b60cd18df893fff21abc
>>>>>>> d0eff538ae952ef278d5ef0494c7ebc145a280ed
  resources :contacts
  resources :abouts
  resources :adminabouts



  namespace :admin do
    resource :sessions,only: [:new]
    match '/signin',to: 'sessions#new',via:'get'
  end
  end
