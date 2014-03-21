require "spec_helper"

describe Position do
  describe "association" do
    it { should belong_to :modality }
  end

  describe "validation of the title field" do
    describe "when the value is empty" do
      position_to_test = FactoryGirl.build(:position, title: nil)
      it { expect(position_to_test).to_not be_valid }
      it { expect(position_to_test).to have(1).errors_on(:title) }
    end

    describe "when the value is not empty" do
      position_to_test = FactoryGirl.build(:position)
      it { expect(position_to_test).to be_valid }
    end
  end
end
