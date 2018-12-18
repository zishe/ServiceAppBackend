require "rails_helper"

RSpec.describe Ingredient, type: :model do
  let(:ingredient) { create(:ingredient) }

  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:name) }
end
