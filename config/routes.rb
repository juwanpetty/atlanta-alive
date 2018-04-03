Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
    get '/signup', to: 'registrations#new'
  end

  resources :photos

  get  '/',  to: 'pages#index'
  root 'pages#index'
end
