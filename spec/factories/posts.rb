FactoryGirl.define do
  factory :post do
    title { Faker::Book.title }
    body { Faker::Lorem.paragraphs }

    association :user
  end
end
