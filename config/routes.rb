Rails.application.routes.draw do
  resources :imageforhomes
  resources :poi_grips_infos
  resources :poi_string_infos
  resources :poi_racket_infos
  resources :poi_shuttlecocks_infos
  resources :poi_apparel_infos
  resources :poi_product_infos
  # get 'cart/index'
  #
  # get 'controller/cart'
  #
  # get 'controller/index'

  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'
  get '/home' => 'imageforhomes#index'
  get '/grips' => 'poi_grips_infos#index'
  get '/strings' => 'poi_string_infos#index'

  get '/rackets' => 'poi_racket_infos#index'
  get '/shuttlecocks' => 'poi_shuttlecocks_infos#index'
  get '/apparels' => 'poi_apparel_infos#index'



  resources :products
  get 'page/home'

  get '/about' => 'page#about'

  get '/contact' => 'page#contact'
  get 'page/profile'
  get 'page/faq'


  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'page#home'
  root 'imageforhomes#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
