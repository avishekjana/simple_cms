Rails.application.routes.draw do

  resources :pages
  root 'subjects#index'

  resources :subjects

end
