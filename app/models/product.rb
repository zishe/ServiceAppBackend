# == Schema Information
#
# Table name: products
#
#  id             :bigint(8)        not null, primary key
#  name           :string
#  description    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  serving_weight :integer
#

class Product < ApplicationRecord
  has_one_attached :image
  has_and_belongs_to_many :ingredients

  has_and_belongs_to_many :categories

  validates :name, presence: true, uniqueness: true
end
