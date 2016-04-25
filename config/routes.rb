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






  namespace :admin do
    resource :sessions,only: [:index]
    match '/signin',to: 'sessions#new',via:'get'
    resource :sessions,only: [:new]
    match '/signin/new',to: 'sessions#new',via:'get'
  end
end


