require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'has a valid factory' do
      expect(create(:user)).to be_valid
    end

    it 'is invalid without a first name' do
      expect(build(:user, first_name: nil)).to be_invalid
    end

    it 'is invalid without a last name' do
      expect(build(:user, last_name: nil)).to be_invalid
    end

    it 'is invalid without a company' do
      expect(build(:user, company: nil)).to be_invalid
    end

    it 'is invalid without a email' do
      expect(build(:user, email: nil)).to be_invalid
    end

    it 'does not allow duplicate emails' do
      create(:user, email: 'john@example.com')
      expect(build(:user, email: 'john@example.com')).to be_invalid
    end
  end

  describe '#some_method' do

  end
end
