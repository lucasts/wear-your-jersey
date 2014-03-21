require "faker"

FactoryGirl.define do
  factory :position do
    title { Faker::Lorem.word }
    staff { false }
    modality
  end
end
