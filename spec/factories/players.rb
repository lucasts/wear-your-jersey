require "faker"

FactoryGirl.define do
  factory :player do
    player_image_path = Rails.root.join("spec", "fixtures", "player")
    first_name   { Faker::Name.first_name }
    last_name    { Faker::Name.last_name }
    nickname     { Faker::Lorem.word }
    number       { Faker::Number.number(2) }
    birth        { Date.new(1988, 12, 3) }
    hometown     { Faker::Address.city }
    bio          { Faker::Lorem.sentence(30, true) }
    player_image { File.new(player_image_path.join("player.jpg")) }
    team
    role
  end
end
