FactoryBot.define do
  factory :genre do
    sequence(:name) { |n| "name genre #{n}" }
  end
end
