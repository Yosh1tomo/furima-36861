Rails.application.routes.draw do
  root to: 'items#index'
  resources :furima, only: :index
end
