Rails.application.routes.draw do
  devise_for :users

  resources :users, param: :name, only: [:index, :show, :edit, :update, :destroy]
  resources :personals, only: :edit
  resources :funerals, only: %i[edit show]
  resources :budgets, only: :edit
  resources :chief_mourners, only: :edit
  resources :ashes, only: :edit
  resources :posthumous_names, :edit
  resources :belongings, :edit
  resources :legacies, :edit
  resources :emotions, :friends

  root to: 'users#index'

end
