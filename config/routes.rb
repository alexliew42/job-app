Rails.application.routes.draw do
 
  post "/users" => "users#create"

  # Defines the root path route ("/")
  # root "articles#index"
end
