Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :photos, :galleries, :sessions, :pages

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/signup' => 'users#new'
  get '/edit' => 'users#edit'
  post '/users' => 'users#create'


end
