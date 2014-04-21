after "development:modalities" do
  if Role.count.zero?
    puts "Seed: Creating roles to modalities"
    Modality.all.each do |modality|
      3.times do
        FactoryGirl.create(:role, modality: modality)
      end
      FactoryGirl.create(:role, title: "Coach", staff: true, modality: modality)
    end
  end
end
