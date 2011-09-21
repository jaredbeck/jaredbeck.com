Jaredbeck::Application.routes.draw do
  devise_for :users
  resources :articles
  get "home/index"
  root :to => "home#index"
end
