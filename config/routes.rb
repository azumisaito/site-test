Rails.application.routes.draw do
  get 'parties/join'
  resources :relationships
  resources :users
  root to: 'toppage#index'
  resources :parties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
