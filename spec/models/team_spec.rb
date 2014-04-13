require "spec_helper"

describe Team do
  describe "association" do
    it { should belong_to :modality }
  end

  describe "validation of required fields (title, description)" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end

  describe "full_name_and_id method" do
    team  = FactoryGirl.create(:team)
    title = [team.modality.title, team.title].join " - "
    id    = team.id
    it "should return a array with full title and id" do
      expect(team.full_name_and_id).to eq [title, id]
    end
  end
end
