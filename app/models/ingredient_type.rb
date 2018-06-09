# == Schema Information
#
# Table name: ingredient_types
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  description   :string
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class IngredientType < ApplicationRecord
  belongs_to :ingredient, dependent: :destroy

  validates :name, presence: true, uniqueness: { scope: :ingredient }
end
