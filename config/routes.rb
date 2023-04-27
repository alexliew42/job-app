Rails.application.routes.draw do
  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"
  resources :jobs
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

end
