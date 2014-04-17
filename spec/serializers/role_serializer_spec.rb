require "spec_helper"

describe RoleSerializer do
  role             = FactoryGirl.create(:role)
  serializerReturn = described_class.new(role).as_json root: false

  it "returns a array with 2 indices" do
    expect(serializerReturn.length).to eq(2)
  end

  it "returns a array with title and id of role model" do
    expect(serializerReturn[:title]).to eq(role.title)
    expect(serializerReturn[:id]).to    eq(role.id)
  end
end
