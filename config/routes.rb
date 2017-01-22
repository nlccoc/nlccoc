Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  #scope "(:locale)", :locale => /en|zh/ do
  #resources :events
  #resources :mvideos
  #resources :libraries
  #resources :categories
  #resources :maudios
  #end

  get 'mgmts' => 'mgmts#index'
  get 'mgmt' => 'mgmt#index'
  get 'mgmt/media/video' => 'mgmt#video'
  get 'mgmt/media/audio' => 'mgmt#audio'
  
  get 'rolcc_feed/:id' => 'main#rolcc_feed', as: :rolcc_feed
  
  #get "mgmts/*path" => "mgmts#index"
  #get "mgmts/*path.html" => "mgmts#index"
  
  # devise customized controllers: sessions, registrations
  devise_for :mgmts, controllers: { sessions: 'mgmts/sessions', registrations: 'mgmts/registrations' }
  
  
  scope "/(:locale)", :locale => /en|zh|cn/, :except => 'mgmts' do
    resources :events
    resources :mvideos
    resources :libraries
    resources :categories
    resources :maudios
    
    get 'main/index' => 'main#index'
    
    root 'main#index'
    
    get "share" => "main#share" 
    get 'home' => 'main#home'
    get "tithe" => "main#tithe"
    get "cellgroups" => "main#cellgroups"
    get "videos" => "main#videos"
    get "audio" => "main#audio"
    get "about" => "main#about"
    get "youngadults" => "main#youngadults"
    get "children" => "main#children"
    get "worship" => "main#worship"
    get "equipping" => "main#equipping"
    get "mission" => "main#mission"
    get "pastors" => "main#pastors"
    get "contact" => "main#contact"
    get "build" => "main#build"
    get "mission" => "main#mission"
    get "ministries" => "main#ministries"
    get "rolcc_feeds" => "main#rolcc_feeds"
  end
  
  
  
  get "/:locale" => 'main#index'
  
  get "/" => "main#index"
  
  get "/mgmts/*path" => "mgmts#index"
  get "/mgmts/*path.html" => "mgmts#index"
  
  # For ui.router
  get "*path" => "main#index"
  get "*path.html" => "main#index"

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
