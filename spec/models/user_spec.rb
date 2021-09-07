require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is valid with valid attributes" do
    expect(User.create(
      email:'test@test.fr',
      password:'password',
      password_confirmation:'password'))
      .to be_valid
  end

  it "is not valid without a email" do
    expect(User.create(
      email:nil,
      password:'password',
      password_confirmation:'password'))
      .to_not be_valid
  end

  it "is not valid without a password" do
    expect(User.create(
      email:'test@test.fr',
      password:nil,
      password_confirmation:'password'))
      .to_not be_valid
  end

  it "is not valid without the same password confirmation" do
    expect(User.create(
      email:'test@test.fr',
      password:'password',
      password_confirmation:'paswor'))
      .to_not be_valid
  end
end