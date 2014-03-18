require "faker"

FactoryGirl.define do
  factory :modality do
    title       { Faker::Lorem.word }
    description { Faker::Lorem.sentence(20, true) }
  end
end
