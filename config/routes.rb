Rails.application.routes.draw do
  
  get 'roupas/desconto/:id_categoria', to: 'customer#productos_desconto'
  get 'roupas/vestidos', to: 'customer#index_customer'
  get 'roupas/:id_categoria', to: 'customer#productos_categoria'
  get 'roupas/detalhes/:id', to: 'customer#details_product'
  get 'home/contact', to: 'home#contact'
  get 'home/about', to: 'home#about'
  get 'home/size', ti: 'home#size'
 
  #namespace :admin do
    #get 'categories/index'
    #get 'categories/new'
  #end
  root 'home#index'
  
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :admins do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  namespace :admin do
    resources :categories
  end
end
