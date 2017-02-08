Rails.application.routes.draw do
  resources :products do
    member do
      post :add_to_cart
    end
  end
  resources :carts do
    collection do
    delete :clean
    post :checkout
  end
  end
  resources :cart_items
  resources :orders
  devise_for :users
  root 'products#index'
  namespace :admin do
    resources :products
    resources :orders
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
