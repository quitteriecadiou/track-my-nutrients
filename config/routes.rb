Rails.application.routes.draw do
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/show'
  get 'profiles/update'
  get 'profiles/edit'
  get 'added_recipes/index'
  get 'added_recipes/new'
  get 'added_recipes/create'
  get 'recipes/index'
  get 'recipes/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles, only: [:show, :update, :edit, :new, :create] do
    get '/dashboard', to: "added_recipes#index"
    post '/dashboard', to: "added_recipes#create"
    get '/dashboard/new', to: "added_recipes#new"
  end
  resources :recipes, only: [:index, :show]
end
