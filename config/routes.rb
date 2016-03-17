Rails.application.routes.draw do

  devise_for :users
  resources :tasks

  root 'welcome#index'




end
