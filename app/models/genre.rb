class Genre < ApplicationRecord
  has_many :genres_movies
  has_many :movies, through: :genres_movies

  validates_associated :movies

  validates :name, presence: true, length: { minimum: 2 }
end
