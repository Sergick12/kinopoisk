require 'rails_helper'

RSpec.describe User do
  subject(:user) { described_class.new }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:encrypted_password) }
  it { should allow_value('test@example.com').for(:email) }
  it { should_not allow_value(nil).for(:email) }
  it { should_not allow_value('invalid_email').for(:email) }
end
