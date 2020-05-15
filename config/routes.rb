Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :private_questions
  
  root 'private_questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
