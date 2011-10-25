Jaredbeck::Application.routes.draw do
  devise_for :users
  resources :articles, :users
  get "home/index"
  root :to => "home#index"
end
