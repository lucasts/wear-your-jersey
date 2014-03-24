require "spec_helper"

describe Position do
  describe "association" do
    it { should belong_to :modality }
  end

  describe "validation of required fields (title)" do
    it { should validate_presence_of(:title) }
  end
end
