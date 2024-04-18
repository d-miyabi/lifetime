Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users
  resources :funerals, only: :edit
  resources :budgets, only: :edit
  resources :chief_mourners, only: :edit
  resources :ashes, only: :edit
  resources :posthuomus_names, :edit
  resources :belongings, :edit
  resources :legacies, :edit
  resources :emotions
end
