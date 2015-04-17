require 'rails_helper'

RSpec.describe User, type: :model do
  let(:some_user) { build(:user) }

  describe "ActiveModel validations" do
    it { expect(some_user).to validate_presence_of(:first_name) }
    it { expect(some_user).to validate_presence_of(:last_name) }
    it { expect(some_user).to validate_presence_of(:company) }
    it { expect(some_user).to validate_presence_of(:email) }
    it { expect(some_user).to validate_uniqueness_of(:email) }

    it 'does not allow duplicate emails' do
      create(:user, email: 'john@example.com')
      expect(build(:user, email: 'john@example.com')).to be_invalid
    end

  end
end
