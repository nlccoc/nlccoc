Rails.application.routes.draw do
  get 'children/index'

  get 'errors/not_found'

  get 'errors/internal_server_error'


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
  get 'locations' => 'mgmt#locations'
  
  get 'rolcc_feed/:id' => 'main#rolcc_feed', as: :rolcc_feed
  
  get 'download_sermon' => 'download#sermon'
  get 'calendar' => 'main#calendar'
  #get "mgmts/*path" => "mgmts#index"
  #get "mgmts/*path.html" => "mgmts#index"
  get "children/prayer" => 'children#prayer'
  # devise customized controllers: sessions, registrations
  devise_for :mgmts, controllers: { sessions: 'mgmts/sessions', registrations: 'mgmts/registrations', passwords: 'mgmts/passwords' }
  
  get 'mgmts/inactive' => 'mgmts#inactive'
  get 'mgmts/unapprovedusers' => 'mgmts#unapprovedusers'
  get 'mgmts/approvedusers' => 'mgmts#approvedusers'
  post 'mgmts/approveuser' => 'mgmts#approveuser'
  get 'mgmts/users/:id' => 'mgmts#users'
  get 'CalendarEventView' => 'main#calendarEventView'
  get 'SermonListing' => 'main#sermonListing'
  get 'bible/search' => 'bible#search'
  post 'bible/search' => 'bible#searchpost'
  get 'OnlineBible.jsp' => 'bible#onlinebible'
  get 'bible/:version/:book/:chapter' => 'bible#bchapter'
  get 'pastor/share' => 'main#pastorshare'
  
  get 'utils/aws/isexist' => 'utils/aws#isexist'
  #get '/.well-known/acme-challenge/:id' => 'main#letsencrypt'

  resources "contacts", only: [:create]
  resources "logs"
  resources :newsletters
  
  scope "/(:locale)", :locale => /en|zh|cn/, :except => 'mgmts' do
    resources :events
    resources :mvideos
    resources :libraries
    resources :categories
    resources :maudios
    
    
    match "404", :to => "errors#not_found", :via => :all
    match "500", :to => "errors#internal_server_error", :via => :all
    
    get 'main/index' => 'main#index'
    
    root 'main#index'
    get "pdfviewer" => "main#pdfviewer"
    get "weeklynewspaper" => "main#weeklynewspaper"
    get "comingsoon" => "main#comingsoon"
    get "share" => "main#share" 
    get 'home' => 'main#home'
    get "give" => "main#tithe"
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
    get "rolcc_feeds/book/:book_name" => "main#rolcc_feeds"
    get "rolcc_feeds/:year" => "main#rolcc_feeds"
    get "rolcc_feeds/:year/:month" => "main#rolcc_feeds"
    get "rolcc_feeds" => "main#rolcc_feeds"
    get "teach" => "main#teach"
    get "sundaysermon" => "main#sundaysermon"
  end
  
  get '/wechatqrcode' => 'main#wechat_qrcode.html'
  
  get '/lv', to: 'laverne#index'
  get '/videos_lv', to: 'laverne#videos'
  
  
  
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
