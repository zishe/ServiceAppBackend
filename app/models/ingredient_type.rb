class IngredientType < ApplicationRecord
  belongs_to :ingredient, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :ingredient }
end
