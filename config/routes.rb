Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update, :new, :create, :destroy ] do
    resources :clinics, only: [:new, :create]
  end

  resources :clinics, only: [:index, :show, :update, :destroy] do
    resources :favorites, only: [:create]
  end

  resources :favorites, only: [:destroy]

  root to: "pages#home"
end
