Rails.application.routes.draw do
<<<<<<< HEAD
  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"
=======
  resources :jobs
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
>>>>>>> 45b35ef3ed2331400ddf1802071ac182a0604c92
end
