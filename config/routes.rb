Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :photos, :galleries, :sessions, :pages

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/signup' => 'users#new'
  # post '/edit' => 'users#edit'
  # Do not include the above line, but leave it here to remember what you did.
  post '/users' => 'users#create'


end
