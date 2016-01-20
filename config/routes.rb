Rails.application.routes.draw do
  root 'professors#index'
  resources :professors
end
