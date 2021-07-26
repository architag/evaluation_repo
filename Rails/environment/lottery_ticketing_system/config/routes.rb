require 'sidekiq/web'

Rails.application.routes.draw do
  get 'purchases/index'
  get 'utility_tickets/create'
  get 'cash_tickets/create'
  get '/buy_tickets', to: 'static_pages#buy_tickets'
  get '/checkout', to: 'static_pages#checkout_cart'
  get 'customers/show'
  mount Base => '/api'
  devise_for :customers, :controllers => { registrations: 'registrations'}
  root 'static_pages#home'
  mount Sidekiq::Web => '/sidekiq'
end
