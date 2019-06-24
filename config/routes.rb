Rails.application.routes.draw do
  resources :ticks
  resources :clientes
  resources :pedidos

  root to: 'ticks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
