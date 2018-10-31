Rails.application.routes.draw do

  namespace :api do 

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    patch "/orders/:id" => "orders#update"
    get "/orders/:id" => "orders#show"

    post "/cartedproducts" => "carted_product#create"
    get "/cartedproducts" => "carted_product#index"
  end
end
