Rails.application.routes.draw do

  root to: 'dashboard#index'
  get 'dashboard/index'

  resources :ports
  resources :devices
  resources :runcodes
  resources :wires
  resources :terminals
  resources :punch_blocks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
