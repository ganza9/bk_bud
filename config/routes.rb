Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :reviews


  resources :others do
    resources :reviews
  end

  resources :edibles do
    resources :reviews
  end

  resources :pre_rolls do
    resources :reviews
  end

  resources :flowers do
    resources :reviews
  end

  resources :indicas

  resources :sativas

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
