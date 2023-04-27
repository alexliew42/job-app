Rails.application.routes.draw do
  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"
  resources :jobs
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
