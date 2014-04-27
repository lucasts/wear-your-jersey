require "spec_helper"

describe SponsorCategory do
  describe "associations" do
    it { should have_many :sponsors }
  end
end
