Rails.application.routes.draw do
  devise_for :customers, :controllers => { registrations: 'registrations'}
end
