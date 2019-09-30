Rails.application.routes.draw do
  resources :attributes
  resources :animations
  resources :layers
  resources :pages
  resources :flipbooks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
