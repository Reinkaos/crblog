FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password 'password'
    password_confirmation 'password'

    trait :post do
      after(:create) do |user|
        user.posts << create(:post)
      end
    end
  end
end
