Rails.application.routes.draw do

  get 'users/new'

  devise_for :users
  resources :tasks

  root 'welcome#index'




end
