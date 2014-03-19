if Modality.count.zero?
  puts "Seed: Creating 2 modalities registers"
  modalities = ["Baseball", "Rugby"]
  modalities.each do |m|
    FactoryGirl.create(:modality, title: m)
  end
end
