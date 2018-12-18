require "rails_helper"

RSpec.describe Product, type: :model do
  let(:product) { create(:product) }

  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:name) }
end
