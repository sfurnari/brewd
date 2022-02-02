Rails.application.routes.draw do
  root to: 'pages#home'
  get '/search' => "pages#search"
  resources :users
  resources :cafes do
    resources :rating_cafes
  end
  resources :roasters do
    resources :roaster_ratings
  end
  get '/login' => 'session#new' # show login form
  post '/login' => 'session#create' # form submits, performs login, redirects
  delete '/login' => 'session#destroy' #logout link goes here, perform logout, redirect
end
