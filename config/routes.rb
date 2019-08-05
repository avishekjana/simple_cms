Rails.application.routes.draw do

  resources :sections
  resources :pages
  resources :subjects

  devise_for :admin_users

  root 'public#index'
  get '/public/pages/:subject_id', to: 'public#pages'
  get '/public/pages/:subject_id/sections/:page_id', to: 'public#sections'
end
