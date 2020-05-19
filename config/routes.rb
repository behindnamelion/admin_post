Rails.application.routes.draw do
  resources :notices
  resources :frequent_questions
  resources :business_questions
  get 'home/index'
  devise_for :users
  resources :private_questions
  
  root 'private_questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
