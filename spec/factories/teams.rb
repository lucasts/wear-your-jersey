require "faker"

FactoryGirl.define do
  factory :team do
    team_image_path = Rails.root.join("spec", "fixtures", "team")
    title       { Faker::Lorem.word }
    description { Faker::Lorem.sentence(20, true) }
    team_image  { File.new(team_image_path.join("team.jpg")) }
    modality
  end
end
