require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is invalid without a first name' do
    expect(FactoryGirl.build(:user, first_name: nil)).to be_invalid
  end

  it 'is invalid without a last name' do
    expect(FactoryGirl.build(:user, last_name: nil)).to be_invalid
  end

  it 'is invalid without a company' do
    expect(FactoryGirl.build(:user, company: nil)).to be_invalid
  end

  it 'is invalid without a email' do
    expect(FactoryGirl.build(:user, email: nil)).to be_invalid
  end

  it 'does not allow duplicate emails' do
    FactoryGirl.create(:user, email: 'john@example.com')
    expect(FactoryGirl.build(:user, email: 'john@example.com')).to be_invalid
  end
end
