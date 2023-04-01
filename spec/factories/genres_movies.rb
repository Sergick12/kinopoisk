FactoryBot.define do
  factory :genres_movie do
    association :movie
    association :genre 
  end
end
