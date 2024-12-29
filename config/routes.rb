Rails.application.routes.draw do
  resources :products
  
  devise_for :users, controllers: {
    registrations: 'registrations'
  }

  resource :cart, only: [:show] do
    delete :empty, on: :collection
  end
  
  resources :cart_items, only: [:create, :destroy]
  
  root 'products#index'
end
