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
  describe 'validations' do
    subject { build(:movie) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:release_date) }
    it { is_expected.to validate_presence_of(:age_linit) }
    it { is_expected.to validate_length_of(:name).is_at_least(2) }
  end
end
