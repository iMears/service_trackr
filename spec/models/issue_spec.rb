require 'rails_helper'

RSpec.describe Issue, type: :model do
  let(:issue) { build(:issue) }

  describe 'ActiveModel validations' do

    # Baic validations
    it { expect(issue).to validate_presence_of(:subject) }
    it { expect(issue).to validate_presence_of(:priority) }
    it { expect(issue).to validate_presence_of(:description) }


  end
end
