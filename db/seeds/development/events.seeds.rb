after "development:teams" do
  if Event.count.zero?
    puts "Seed: Creating events to teams"
    Team.all.each do |team|
      10.times do |index|
        FactoryGirl.create(:event,team: team, date: Time.now + (60*60*24*7*index))
      end
    end
  end
end
