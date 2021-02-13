Rails.application.routes.draw do
  resources :buses
  resources :rings
  get 'home/index'
  root to: 'home#index'
  devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
