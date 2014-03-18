require "spec_helper"

describe Team do
  it "Team Factory is valid" do
    expect(FactoryGirl.build(:team)).to be_valid
  end

  it "Title and description are required fields" do
    team_to_test = FactoryGirl.build(:team, title: nil, description: nil)
    expect(team_to_test).to_not be_valid
    expect(team_to_test).to have(1).errors_on(:title)
    expect(team_to_test).to have(1).errors_on(:description)
  end
end
