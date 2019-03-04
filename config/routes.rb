Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do 
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy]
    resources :stocks, only: [:show]
    resources :portfolios, only: [:create, :update, :index]
    resources :transactions, only: [:create, :index]
  end
  root to: 'static_pages#root'
end
