Rails.application.routes.draw do
  resources :jobs
  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"
<<<<<<< HEAD
  get "/signup" => "users#new"
=======


  

  resources :jobs
>>>>>>> c5068268105829b7baeb40aa46edd91a479f324a
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
<<<<<<< HEAD
  get "/logout" => "sessions#destroy"
=======


  get "/signup" => "users#new"
  get "/login" => "sessions#new"
  get "/logout" => "sessions#destroy"
  
 
  

>>>>>>> c5068268105829b7baeb40aa46edd91a479f324a
end
