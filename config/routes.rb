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
  get 'signout', to: 'sessions#destroy'

  resources :sessions, only:[:new, :create]
  resources :articles, only: [:index, :show]
  resources :photos, only: [:index, :show]
  namespace :admin do
    root 'dashboard#index', as: 'root'
		post '/upload', to: 'photos#upload'
    resources :articles
    resources :photos
    resource :resume, only: [:edit, :update]
  end
end
