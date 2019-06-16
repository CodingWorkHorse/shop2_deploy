Rails.application.routes.draw do
  resources :routes
  resources :collections
  resources :notes
  resources :orders
  resources :line_items
  resources :carts
  get 'store/index'

  resources :products do
    get :who_bought, on: :member
  end

  resources :products
  get 'about/index'

  root 'home#index'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'about', to: 'about#index', as: 'about'
  get 'dashboard', to: 'users#index', as: 'dashboard'
  get 'home', to: 'home#index', as: 'home'
  get 'catalog', to: 'store#index', as: 'catalog_all'
  get 'store', to: 'store#index', as: 'store_all'
  get 'store/food', to: 'store#food', as: 'store_food'
  get 'store/beverage', to: 'store#beverage', as: 'store_beverage'
  get 'welcome', to: 'users#welcome', as: 'welcome'
  get 'privacy', to: 'home#privacy', as: 'privacy'
  get 'about/team', to: 'about#meet_team', as: 'meet_team'
  get 'services', to: 'home#services', as: 'services'
  get 'order_summary', to: 'home#order_summary', as: 'order_summary'
  get 'store/today', to: 'store#today', as: 'store_today'
end
