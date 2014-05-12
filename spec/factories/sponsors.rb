require "faker"

FactoryGirl.define do
  factory :sponsor do
    image_path = Rails.root.join("spec", "fixtures", "image")
    title         { Faker::Lorem.word.capitalize }
    description   { Faker::Lorem.sentence(30, true) }
    sponsor_image { File.new(image_path.join("image_without_border.png")) }
    sponsor_category
  end
end
