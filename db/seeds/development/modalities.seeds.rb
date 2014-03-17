if Modality.count.zero?
  puts "Seed: Creating 3 modalities registers"
  3.times do
    FactoryGirl.create(:modality)
  end
end
