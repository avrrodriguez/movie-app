Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actors/:id", controller: "actors", action: "show"
  get "/movies", controller: "movies", action: "index"
  get "/movies/:id", controller: "movies", action: "show"
end
