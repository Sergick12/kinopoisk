FactoryBot.define do
  factory :genre do
    sequence(:name) { |n| "name genre #{n}" }

    factory :genre_with_movies do
      transient do
        movies_count { 5 }
      end
      after(:create) do |genre, evaluator|
        (0..evaluator.movies_count).each do
          genre.movies << FactoryBot.create(:movie)
        end
        genre.reload
      end
    end
  end
end
