Rails.application.routes.draw do
  root 'ethans#index'
  resources :websites
  resources :ethans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
