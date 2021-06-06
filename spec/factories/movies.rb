FactoryBot.define do
  factory :movie do
    movie_title {Faker::Lorem.characters(number: 50)}
    movie_text {Faker::Lorem.characters(number:500)}
    long {Faker::Lorem.characters(number: 30)}
    producer {Faker::Lorem.characters(number: 50)}
    character {Faker::Lorem.characters(number: 200)}
    release_date {"1989-11-27"}

    association :user

    after(:build) do |movie|
      movie.movie_image.attach(io: File.open('public/images/no_image.jpeg'), filename: 'no_image.jpeg')
    end
  end
end
