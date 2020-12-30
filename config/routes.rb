Rails.application.routes.draw do


  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:create, :index, :patch, :destroy]
  resources :lists, only: [:create, :index, :patch, :destroy]
end
