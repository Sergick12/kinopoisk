class GemresMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :genres
end
