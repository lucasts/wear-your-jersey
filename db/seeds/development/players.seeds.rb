after "development:roles", "development:teams" do
  if Player.count.zero?
    puts "Seed: Creating players to teams"
    Team.all.each do |team|
      10.times do
        role = team.modality.roles.sample
        FactoryGirl.create(:player, role: role, team: team)
      end
    end
  end
end
