# == Schema Information
#
# Table name: movies
#
#  id           :bigint           not null, primary key
#  name         :string
#  description  :string
#  release_date :date
#  age_linit    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Movie < ApplicationRecord
end
