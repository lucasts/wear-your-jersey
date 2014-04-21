require "spec_helper"

describe Player do
  describe "associations" do
    it { should belong_to :team }
    it { should belong_to :role }
  end

  describe "validation of required fields" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :nickname }
    it { should validate_presence_of :team_id }
    it { should validate_presence_of :role_id }
  end
end
