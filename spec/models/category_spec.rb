require 'rails_helper'

RSpec.describe Category, type: :model do
  # def build_and_validate_category(*args)
  #   category = build(:category, *args)
  #   category.validate
  #   category
  # end

  let(:category) { create(:category) }

  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to have_and_belong_to_many(:products) }

end
