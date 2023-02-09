# frozen_string_literal: true

Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :users
  resources :recipes, only: %i[index show new create destroy]
  resources :foods, only: [:index, :show, :new, :create, :destroy]
  
  root to: 'foods#index'

  get '/public_recipes', to: 'recipes#public_recipes' 
  post '/public_toggle/:id', to: 'recipes#public_toggle'

end
