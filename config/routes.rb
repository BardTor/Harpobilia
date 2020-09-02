Rails.application.routes.draw do
  
  resources :categories
  get 'cart/index'
  
  resources :orders do
    resources :orderitems
  end 

  devise_for :users do 
    resources :orders
  end 
  
  resources :items
  
  root 'static_pages#home'
  
  get '/items' => 'items#index'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/about_us' => 'static_pages#about_us'
  
  get '/contact_us' => 'static_pages#contact_us'
  
  get '/faq' => 'static_pages#faq'
  
  get '/sizing' => 'static_pages#sizing'
  
  get 'category/:title', to: 'static_pages#category'

#Cart routes cleaned up 09082020

  get '/cart', to: 'cart#index'
  
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/cart/decrease/:id' => 'cart#decrease'

  get '/cart/increase/:id' => 'cart#increase'
  
 get '/checkout' => 'cart#createOrder'
 
 #Payments
 get '/paid/:id' => 'static_pages#paid'

#Admin details 

  get '/admin'=> 'static_pages#admin'
  
  get '/upgrade/:id' => 'static_pages#upgrade'
  
  get '/downgrade/:id' => 'static_pages#downgrade'
  
#Search Capability
post '/search' => 'items#search'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
