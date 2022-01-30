Rails.application.routes.draw do
  get 'cafes/new'
  get 'cafes/index'
  get 'cafes/show'
  get 'cafes/edit'
  resources :users
end
