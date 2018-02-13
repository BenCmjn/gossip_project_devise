Rails.application.routes.draw do
  resources :gossips
  get 'home/index'
  root 'home#index'

  devise_for :moussaillons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
