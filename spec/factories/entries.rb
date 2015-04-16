FactoryGirl.define do
  factory :entry do
    posted_by { Faker::Name.first_name }
    body { Faker::Lorem.sentence(2)}
  end
end
