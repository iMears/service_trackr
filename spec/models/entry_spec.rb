require 'rails_helper'

RSpec.describe Entry, type: :model do

  describe "ActiveModel validations" do

    # Basic validations
    it { expect(:entry).to validate_presence_of(:posted_by) }
    it { expect(:entry).to validate_presence_of(:body) }

    it 'is a valid entry' do
      expect(FactoryGirl.create(:entry)).to be_valid
    end

    it 'is invalid without a posted by' do
      expect(FactoryGirl.build(:entry, posted_by: nil)).to be_invalid
    end

    it 'is invalid without a body' do
      expect(FactoryGirl.build(:entry, body: nil)).to be_invalid
    end

  end
end
