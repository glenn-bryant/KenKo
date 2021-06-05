Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :update, :new, :create, :destroy ] do
    resources :clinics, only: [:new, :create]
  end

  resources :clinics, only: [:index, :show, :update, :destroy] do 
    resources :likes, only: [:new, :create, :destroy]
  end

  # resources :likes, only: [:destroy]

  root to: "pages#home"
end
