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
  resources :sitemaps
  resources :kefus
  resources :adminkefus
  resources :frames
  resources :adminframes



  root 'sides#index'

end


