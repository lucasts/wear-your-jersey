require "faker"

FactoryGirl.define do
  factory :role do
    title { Faker::Lorem.word }
    staff { false }
    modality
  end
end
