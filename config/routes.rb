# frozen_string_literal: true

Rails.application.routes.draw do
  resources :foods
  devise_for :users
  resources :users
  resources :recipes, only: %i[index show new create destroy] do
    resources :recipe_foods, only: %i[create destroy new]
  end

  root to: 'foods#index'

  get '/public_recipes', to: 'recipes#public_recipes'
  get '/shopping_list', to: 'foods#shopping_list'
  post '/public_toggle/:id', to: 'recipes#public_toggle'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
