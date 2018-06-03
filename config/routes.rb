Rails.application.routes.draw do
  devise_for :users
  resources :bookmarks
  resources :episodes do
    resources :reviews
    resources :views
  end
  resources :series
  resources :seasons
  resources :users
  root 'series#index'
  get 'welcome/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
