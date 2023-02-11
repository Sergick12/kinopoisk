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
require 'rails_helper'

RSpec.describe Movie do
  pending "add some examples to (or delete) #{__FILE__}"
end
