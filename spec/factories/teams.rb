require "faker"

FactoryGirl.define do
  factory :team do
    image_path = Rails.root.join("spec", "fixtures", "image")
    title       { Faker::Lorem.word }
    description { Faker::Lorem.sentence(20, true) }
    team_image  { File.new(image_path.join("image.png")) }
    modality
  end
end
