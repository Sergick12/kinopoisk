# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  description  :string           not null
#  release_date :date             not null
#  age_linit    :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Movie < ApplicationRecord
  has_many :genres_movies
  has_many :genres, through: :genres_movies

  validates_associated :genres

  validates :name, presence: true, length: { minimum: 2 }
  validates :age_linit, presence: true
  validates :release_date, presence: true
  validates :description, presence: true
end
