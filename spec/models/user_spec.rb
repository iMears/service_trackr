require 'rails_helper'

RSpec.describe User, type: :model do
  let(:some_user) { build(:user) }

  describe "ActiveModel validations" do

    # Basic validations
    it { expect(some_user).to validate_presence_of(:first_name) }
    it { expect(some_user).to validate_presence_of(:last_name) }
    it { expect(some_user).to validate_presence_of(:company) }
    it { expect(some_user).to validate_presence_of(:email) }
    it { expect(some_user).to validate_uniqueness_of(:email) }

    # Format validations
    it { expect(some_user).to allow_value("Maxwell").for(:first_name) }
    it { expect(some_user).to allow_value("Mears").for(:last_name) }
    it { expect(some_user).to_not allow_value("@Maxwell").for(:first_name) }
    it { expect(some_user).to_not allow_value(" Mears").for(:last_name) }
    it { expect(some_user).to allow_value("", nil).for(:phone_number) }

    # Inclusion/acceptance of values
    it { expect(some_user).to validate_confirmation_of(:password) }
  end
end
