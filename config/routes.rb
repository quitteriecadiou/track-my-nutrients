Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/styleguide', to: 'pages#styleguide'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:show, :update, :edit, :new, :create] do
    get '/dashboard', to: "added_recipes#index"
    post '/dashboard', to: "added_recipes#create"
    get '/dashboard/new', to: "added_recipes#new"
  end
  resources :recipes, only: [:index, :show]
end
