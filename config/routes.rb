Rails.application.routes.draw do
  get "/companys" => "companys#index"
  get "/companys/:id" => "companys#show"
end
