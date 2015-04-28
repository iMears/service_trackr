require 'faker'

FactoryGirl.define do
  factory :entry do |f|
    f.posted_by { Faker::Name.first_name }
    f.body { Faker::Lorem.sentence(2) }
  end
end
