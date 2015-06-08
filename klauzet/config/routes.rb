Rails.application.routes.draw do

#this is my home/landing page
 root 'fashionpost#index', as: :users

  get 'users/new' => 'users#new', as: :new_user

  post '/' => 'users#create'

    #to display the form
  get "/fashionpost" => "fashionpost#index", as: :posts
  get "/fashionpost/new" => "fashionpost#new", as: :new_post
  post "/fashionpost" => "fashionpost#create", as: :create_post
  get "/fashionpost/:id" => "fashionpost#show", as: :post
  get "/fashionpost/:id" => "fashionpost#edit", as: :edit_post
  delete "/fashionpost/:id" => "fashionpost#delete", as: :delete_post
  patch "/fashionpost/:id" => "fashionpost#update", as: :update_post

  #create a new session (this is the login post)
  

  #destroy the session and log a user out
  get 'sessions/new' => 'sessions#new', as: :new_session
  get 'sessions/destroy' => 'sessions#destroy', as: :destroy_session
  post 'sessions/new' => 'sessions#create', as: :create_session 


  
end
