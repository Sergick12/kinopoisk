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
require 'rails_helper'

RSpec.describe Movie do
  pending "add some examples to (or delete) #{__FILE__}"
end
