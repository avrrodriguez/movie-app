class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :plot, presence: true, length: { minimum: 30 }
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    genres.map { |genre|
      genre.name
    }
  end
end
