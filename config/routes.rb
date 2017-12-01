Rails.application.routes.draw do
  devise_for :users
  root :to => 'pages#home'

  resources :others
  resources :edibles
  resources :pre_rolls
  resources :flowers
  resources :indicas
  resources :sativas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
