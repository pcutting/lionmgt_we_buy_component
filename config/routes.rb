Realestate::Application.routes.draw do

  match "webuy" => "sellers#new"
  match "WeBuy" => "sellers#new"
  match "WEBUY" => "sellers#new"
  match "Webuy" => "sellers#new"
  match "WEBuy" => "sellers#new"
  match "thankyou_webuy" => "homes#thankyou_webuy"

  resources :blog_comments do
    resources :blog_comments
  end

  resources :blogs do
    member do
      post "comment", "reply"
    end
    resources :blog_comments
  end
  
  #resources :lenders

  #resources :borrowers

  #resources :buyers

  resources :sellers

  namespace :member do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
    resources :contacts
    root :to => "contacts#index"
  end
  
  namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
    resources :contacts
    resources :users  #TODO: this should be in admin name space
  end

  #resources :prospective_properties do
  #  collection do
  #    put 'multiple_properties'
  #  end
  #end
  
  

  #resources :labels

  resources :contacts
  
  resources :homes do
    collection do
      get 'sell', 'buy', 'lend', 'borrow', 'thankyou_webuy'
    end
  end

  devise_for :users 
  
  #get "users/show"
  #get "homes/index"
  #get "home/get_interest"
  get "homes/thankyou_webuy"

  resources :users, :only => :show

  #,:path => "usuarios", :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  
  #devise_for :users


  root :to => "sellers#new" #root :to => "homes#index"
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
