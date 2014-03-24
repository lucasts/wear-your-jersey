after "development:modalities" do
  if Position.count.zero?
    puts "Seed: Creating positions to modalities"
    Modality.all.each do |modality|
      3.times do
        FactoryGirl.create(:position, modality: modality)
      end
      FactoryGirl.create(:position, title: "Coach", staff: true, modality: modality)
    end
  end
end
