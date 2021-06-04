FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6) + "1a"
    password {password}
    password_confirmation {password}

    after(:build) do |user|
      user.image.attach(io: File.open('public/images/user_nil.png'), filename: 'user_nil.png')
    end
  end
end
