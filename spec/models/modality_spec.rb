require "spec_helper"

describe Modality do
  describe "associations" do
    it { should have_many :teams }
    it { should have_many :positions }
  end

  describe "validation of required fields (title)" do
    it { should validate_presence_of(:title) }
  end
end
