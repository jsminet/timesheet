Rails.application.routes.draw do
  resources :vacancies
  resources :customers
  resources :countries
  root to: 'welcome#index'
  devise_for :users
  resources :users
end
