after "development:modalities" do
  if Team.count.zero?
    puts "Seed: Creating Teams to modalities"
    Modality.all.each do |modality|
      FactoryGirl.create(:team, title: "Pricipal", modality: modality)
      FactoryGirl.create(:team, title: "Academy", modality: modality)
    end
  end
end
