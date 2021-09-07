require 'rails_helper'

RSpec.describe Location, :type => :model do
  it "is valid with valid attributes" do
    expect(Location.create(name:'Paris')).to be_valid
  end

  it "is not valid without a name" do
    expect(Location.create(name:nil)).to_not be_valid
  end
end