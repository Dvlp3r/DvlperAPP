Rails.application.routes.draw do
  resources :features
  resources :user_story_cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  get 'dashboard' => 'pages#dashboard'
  root 'pages#dashboard'
end
