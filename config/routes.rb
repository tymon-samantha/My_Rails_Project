Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]

  post 'static_pages/thank_you'

  get 'static_pages/landing_page'

  get 'products/products'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#index'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html