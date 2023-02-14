FactoryBot.define do
  factory :movie do
    sequence(:name) { |n| "name book #{n}" }
    age_linit { rand(0..18) }
    release_date { Time.zone.today - rand(10_000) }
    sequence(:description) { |n| "description book #{n}" }
  end
end
