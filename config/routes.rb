Rails.application.routes.draw do
  devise_for :users
  resources :views
  resources :bookmarks
  resources :episodes
  resources :seasons
  resources :series
  resources :reviews
  resources :users
  root 'series#index'
  get 'welcome/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
