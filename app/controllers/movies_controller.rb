class MoviesController < ApplicationController
  def index
    movie = Movie.all

    render json: movie.as_json
  end

  def show
    movie = Movie.find(params["id"])

    render json: movie.as_json
  end

  def create
    movie = Movie.create(
      "title": params["title"],
      "year": params["year"],
      "plot": params["plot"],
      "director": params["director"],
      "english": params["english"],
    )
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params["id"])
    movie.title = params["title"] || movie.title
    movie.year = params["title"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.director = params["director"] || movie.director
    movie.english = params["english"]
    movie.save

    render json: movie.as_json
  end

  def destroy
    movie = Movie.find(params["id"])
    movie.destroy
    render json: { "message": "movie yeeted successfully" }
  end
end
