Rails.application.routes.draw do
  resources :photos

  get  '/',  to: 'pages#index'
  root 'pages#index'
end
