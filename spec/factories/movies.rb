FactoryBot.define do
  factory :movie do
    

    after(:build) do |movie|
      movie.movie_image.attach(io: File.open('public/images/no_image.jpeg'), filename: 'no_image.jpeg')
    end
  end
end
