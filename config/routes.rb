Rails.application.routes.draw do
  post '/auth/login', to: 'authentication#login'
  resources :users
  resources :recipes

  get '/*a', to: 'application#not_found'
end
