Rails.application.routes.draw do
  # Actors routes
  get "/actors", controller: "actors", action: "index"
  get "/actors/:id", controller: "actors", action: "show"
  post "/actors", controller: "actors", action: "create"
  patch "/actors/:id", controller: "actors", action: "update"
  delete "/actors/:id", controller: "actors", action: "delete"

  # Movies routes
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  post "/movies" => "movies#create"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"

  # Users
  post "/users", controller: "users", action: "create"

  # Session
  post "/sessions", controller: "sessions", action: "create"
end
