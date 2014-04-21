require "spec_helper"

describe Modality do
  describe "associations" do
    it { should have_many :teams }
    it { should have_many :roles }
  end

  describe "validation of required fields" do
    it { should validate_presence_of(:title) }
  end
end
