Rails.application.routes.draw do
 
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"


  #images 
  post "/images" => "images#create"

  #users
  post "/users" => "users#create"

  #sessions
  post "/sessions" => "sessions#create"
  
  #orders
  get "/orders" => "orders#index"
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  delete "/orders/:id" => "orders#destroy"

  #carted_products

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"

end
