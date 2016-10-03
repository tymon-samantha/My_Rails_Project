Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users
  resources :products do
    resources :comments
  end
  resources :orders, only: [:index, :show, :create, :destroy]

  post 'static_pages/thank_you'

  get 'users/index'

  get 'users/signup'

  get 'static_pages/landing_page'

  get 'products/products'

  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  root 'static_pages#landing_page'
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html