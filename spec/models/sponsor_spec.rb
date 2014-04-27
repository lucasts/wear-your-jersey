require "spec_helper"

describe Sponsor do
  describe "associations" do
    it { should belong_to :sponsor_category }
  end
end
