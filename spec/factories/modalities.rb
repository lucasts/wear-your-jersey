require "faker"

FactoryGirl.define do
  factory :modality do
    modalities = ["Soccer", "Baseball", "Rugby"]
    sequence(:title) { |n| modalities[n - 1] }
    description { Faker::Lorem.sentence(20, true) }
  end
end
