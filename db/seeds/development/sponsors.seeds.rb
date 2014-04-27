after "development:sponsors_categories" do
  puts "Seed: Creating sponsors to sponsors categories"
  SponsorCategory.all.each do |category|
    2.times do
      FactoryGirl.create(:sponsor, sponsor_category: category)
    end
  end
end
