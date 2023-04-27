Rails.application.routes.draw do
  resources :jobs
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
