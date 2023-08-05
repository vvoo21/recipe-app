Rails.application.routes.draw do
  get 'shopping_list/index'
  devise_for :users
  resources :inventory_foods
  resources :inventories
  resources :foods
  resources :recipe_foods
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
  resources :users
  resources :foods, only: [:show, :new, :create, :index, :destroy]
  resources :recipes, only: [:show, :new, :create, :index, :destroy] do
    resources :recipe_foods
    get '/add_food/', to: 'recipe_foods#add_food'
    get 'recipe_foods/:id/edit', to: 'recipe_foods#edit', as: 'edit_recipe_food'
    patch 'recipe_foods/:id', to: 'recipe_foods#update', as: 'update_recipe_food'
  end
  resources :inventories, only: [:show, :new, :create, :index, :destroy]   do
    resources :inventory_foods
  end
  get '/public_recipes', to: 'recipes#public_recipes'

  resources :shopping_list, only: [:index]
  
end
