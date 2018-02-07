Rails.application.routes.draw do
  resources :runcodes
  resources :devices
  resources :punch_blocks
  resources :terminals
  resources :wires
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
