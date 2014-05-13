if SponsorCategory.count.zero?
  puts "Seed: Creating sponsors categories"
  (1..3).each do |index|
    FactoryGirl.create(:sponsor_category, grandeur: index)
  end
end
