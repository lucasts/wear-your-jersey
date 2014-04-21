if Modality.count.zero?
  puts "Seed: Creating modalities"
  modalities = ["Baseball", "Rugby"]
  modalities.each do |m|
    FactoryGirl.create(:modality, title: m)
  end
end
