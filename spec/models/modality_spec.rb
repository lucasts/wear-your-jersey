require "spec_helper"

describe Modality do
  it "Modality factory it's working" do
    expect(FactoryGirl.build(:modality)).to be_valid
  end

  it "Only the title field is required" do
    modality_to_test = FactoryGirl.build(:modality, title: nil)
    expect(modality_to_test).to_not be_valid
    expect(modality_to_test).to have(1).errors_on(:title)
  end
end
