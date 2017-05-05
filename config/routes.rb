Rails.application.routes.draw do
  devise_for :users
  
  get 'items/index'
  get 'welcome/about'
  get 'welcome/index'

  resources :items, only: [:new, :create, :edit]
  
  authenticated :user do
    root 'items#index', as: :authenticated_index
  end
  
  root 'welcome#index'
end
