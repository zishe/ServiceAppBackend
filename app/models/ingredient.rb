# == Schema Information
#
# Table name: ingredients
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ingredient < ApplicationRecord
  has_and_belongs_to_many :products
  has_many :ingredient_types

  validates :name, presence: true, uniqueness: true
end
