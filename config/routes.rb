Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :caves
  get "up" => "rails/health#show", as: :rails_health_check
end
