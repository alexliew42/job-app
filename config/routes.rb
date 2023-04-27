Rails.application.routes.draw do


  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"


  

  resources :jobs
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"


  get "/signup" => "users#new"
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  
 
  

end
