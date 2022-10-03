Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"

  scope module: 'admin' do 
    get 'admin-home' => 'home#index', as: :admin_home
  end

  scope module: 'guest' do 
    get 'product' => 'product#index', as: :product
    get 'about' => 'about#index',as: :about
  end 

end
