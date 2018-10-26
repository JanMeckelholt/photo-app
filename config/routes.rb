Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  devise_for :users #, :controllers => {:registrations => 'registrations'}
  resources :charges
  root 'welcome#index'
  get '/welcome/something', to: 'welcome#something'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
