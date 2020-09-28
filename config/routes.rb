Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  get 'hello/say_hello'
  resources :portfolios, except: :new
end
