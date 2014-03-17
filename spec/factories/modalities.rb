require "faker"

FactoryGirl.define do
  factory :modality do
    title       { Faker::Lorem.sentence(3, false) }
    description { Faker::Lorem.sentence(10, true) }
  end
end
