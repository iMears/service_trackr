require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:entry) { build(:entry) }

  describe "ActiveModel validations" do

    # Basic validations
    it { expect(entry).to validate_presence_of(:posted_by) }
    it { expect(entry).to validate_presence_of(:body) }
  end
end
