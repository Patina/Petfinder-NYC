Rails.application.routes.draw do
  
  get 'shelters/index'

  resources :shelters
  resources :cats
  resources :dogs
  root 'welcome#index'
end
