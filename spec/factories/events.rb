require "faker"

FactoryGirl.define do
  factory :event do
    locale      { Faker::Address.city }
    description { Faker::Lorem.sentence(30, true) }
    opponent    { Faker::Lorem.word }
    date        { Time.now }
    team
  end
end
