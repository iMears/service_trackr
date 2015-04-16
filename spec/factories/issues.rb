require 'faker'

FactoryGirl.define do
  factory :issues do |f|
    f.subject "WTF?"
    f.description { Faker::Lorem.sentence(3) }
    f.priority "High"
  end
end
