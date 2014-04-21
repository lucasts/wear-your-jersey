require "spec_helper"

describe Role do
  describe "association" do
    it { should belong_to :modality }
  end

  describe "validation of required fields" do
    it { should validate_presence_of(:title) }
  end
end
