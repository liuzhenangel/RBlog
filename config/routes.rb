require 'sidekiq/web'
Sidekiq::Web.set :session_secret, Rails.application.secrets[:secret_key_base]

Rails.application.routes.draw do

  # write your routes here

  mount Sidekiq::Web => '/sidekiq'
  mount StatusPage::Engine => '/'
  #mount ActionCable.server => '/cable'
  root to: 'home#index'

  get 'about', to: 'home#about'
  get 'timeline', to: 'home#timeline'
  resources :articles

  namespace :admin do
    root 'dashboard#index', as: 'root'
    resources :articles
  end
end
