Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  get '/about', :to => 'pages#about'
  get '/contact', :to => 'pages#contact'
  get '/resources', :to => 'pages#resources'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
  get 'home/index'
    resources :posts
    resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
end

# match keyword has been deprecated - just use get instead
