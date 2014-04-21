require "spec_helper"

describe Team do
  describe "association" do
    it { should belong_to :modality }
  end

  describe "validation of required fields" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end
end
