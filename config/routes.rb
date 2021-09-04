Rails.application.routes.draw do
  get 'stat/index'
  resources :councillors
  resources :chairmen
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
