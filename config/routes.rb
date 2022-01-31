Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users, :cafes, :roasters
  get '/login' => 'session#new' # show login form
  post '/login' => 'session#create' # form submits, performs login, redirects
  delete '/login' => 'session#destroy' #logout link goes here, perform logout, redirect
end
