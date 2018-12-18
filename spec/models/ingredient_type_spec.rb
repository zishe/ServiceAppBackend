require "rails_helper"

RSpec.describe IngredientType, type: :model do
  let(:ingredient_type) { create(:ingredient_type) }

  # it { is_expected.to validate_uniqueness_of(:name).scoped_to(:ingredient) }
  it { is_expected.to validate_presence_of(:name) }
end
