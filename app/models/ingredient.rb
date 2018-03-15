class Ingredient < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :ingredient_types

  validates :name, presence: true, uniqueness: true
end
