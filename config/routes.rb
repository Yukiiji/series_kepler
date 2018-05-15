Rails.application.routes.draw do
  resources :views
  resources :bookmarks
  resources :episodes
  resources :seasons
  resources :series
  resources :reviews
  resources :users
  root 'welcome#hello'
  get 'welcome/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
