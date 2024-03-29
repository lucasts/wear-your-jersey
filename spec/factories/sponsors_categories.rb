require "faker"

FactoryGirl.define do
  factory :sponsor_category do
    title    { Faker::Lorem.word.capitalize }
    grandeur { (1..SponsorCategoryGrandeurType.length).to_a.sample }
  end
end
