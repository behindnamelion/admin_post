Rails.application.routes.draw do
  resources :termsofservices
  resources :notices
  resources :frequent_questions
  resources :business_questions
  get 'home/index'
  devise_for :users
  resources :private_questions
  
  post 'frequent_questions/:id/toggle' => 'frequent_questions#toggle'
  post 'notices/:id/toggle' => 'notices#toggle'
  post 'termsofservices/:id/toggle' => 'termsofservices#toggle'

  root 'business_questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
