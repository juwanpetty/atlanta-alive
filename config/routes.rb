Rails.application.routes.draw do
  devise_for :users
  resources :photos

  get  '/',  to: 'pages#index'
  root 'pages#index'
end
