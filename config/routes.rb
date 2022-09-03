Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actors", controller: "actors", action: "index"
  get "/actors/:id", controller: "actors", action: "show"
  post "/actors", controller: "actors", action: "create"
  patch "/actors/:id", controller: "actors", action: "update"
  delete "/actors/:id", controller: "actors", action: "delete"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
end
