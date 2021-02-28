Rails.application.routes.draw do
  get 'pages/search'
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
      resources :doses, only: [:new, :create]
    end
  resources :doses, only: [:update, :destroy]
  resources :ingredients, only: [:index, :new, :create, :update, :destroy]

get '/search' => 'pages_controller#search', :as => 'search_page'
end
