Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
      resources :doses, only: [:new, :create]
    end
  resources :doses, only: [:update, :destroy]
  resources :ingredients, only: [:index, :new, :create, :update, :destroy]
end
