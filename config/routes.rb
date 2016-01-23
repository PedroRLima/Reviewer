Rails.application.routes.draw do
  root 'professors#index'
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :professors do
  	resources :comments
  end 
end
