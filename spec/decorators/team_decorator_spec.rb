require "spec_helper"

describe TeamDecorator do
  team = FactoryGirl.build(:team)
  decorator = TeamDecorator.new(team)

  describe "#full_name_and_id" do
    it "returns a array with full name and id of teams" do
      full_title = [team.modality.title, team.title].join(" - ")
      expect(decorator.full_name_and_id).to eq([full_title, team.id])
    end
  end
end
