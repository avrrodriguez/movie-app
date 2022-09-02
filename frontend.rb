require "http"

# Displays all movies
response = HTTP.get("http://localhost:3000/movies.json")
pp response.parse(:json)

# Displays one movie
response = HTTP.get("http://localhost:3000/movies/2.json")
pp response.parse(:json)
