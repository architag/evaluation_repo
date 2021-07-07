Rails.application.routes.draw do
  get 'tickets/create'
  get 'customers/show'
  mount Base => '/api'
  devise_for :customers, :controllers => { registrations: 'registrations'}
  root 'static_pages#home'
end
