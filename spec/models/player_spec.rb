require "spec_helper"

describe Player do
  describe "associations" do
    it { should belong_to :team }
    it { should belong_to :position }
  end

  describe "validation of required fields (first_name, nickname)" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :nickname }
  end
end
