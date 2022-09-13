class MovieGenresController < ApplicationController
  def create
    movie = MovieGenre.new(
      genre_id: params["genre_id"],
      movie_id: params["movie_id"],
    )
    movie.save
    render json: movie.as_json
  end
end
