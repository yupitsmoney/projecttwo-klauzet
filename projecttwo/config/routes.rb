Rails.application.routes.draw do

  # we'll set the root route to users index
  root 'users#index', as: :users

  # route to return our sign up form
  get 'users/new' => 'users#new', as: :new_user

  #a route to post our user from to
  post '/' => 'users#create'

  #...above routes ommitted

  #to display the form
  get 'sessions/new' => 'sessions#new', as: :new_session


  #create a new session (this is the login post)
  post 'sessions/new' => 'sessions#create', as: :create_session

  #destroy the session and log a user out
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session 

  get 'targets/' => 'targets#index', as: :targets

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
