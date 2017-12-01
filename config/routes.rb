Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :reviews
  resources :others
  resources :edibles
  resources :pre_rolls
  resources :flowers
  resources :indicas
  resources :sativas

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
