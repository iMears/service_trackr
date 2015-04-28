require 'rails_helper'

RSpec.describe Entry, type: :model do
  let(:the_entry) { build(:entry) }

  describe "ActiveModel validations" do
    # Basic validations
    it { expect(the_entry).to validate_presence_of(:posted_by) }
    it { expect(the_entry).to validate_presence_of(:body) }
  end
end
