require 'rails_helper'

RSpec.describe Category, :type => :model do
  it "is valid with valid attributes" do
    expect(Category.create(name:'House')).to be_valid
  end

  it "is not valid without a name" do
    expect(Category.create(name:nil)).to_not be_valid
  end
end