class GemresMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :genres

  validates :movie_id, uniqueness: { scope: :genre_id }
end
