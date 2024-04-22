Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :caves
  get 'my_caves', to: 'caves#my_caves'
  get "up" => "rails/health#show", as: :rails_health_check
end
