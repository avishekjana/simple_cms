Rails.application.routes.draw do

  root 'subjects#index'

  resources :subjects

end
