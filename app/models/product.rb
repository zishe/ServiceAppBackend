# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  has_one_attached :image
  has_and_belongs_to_many :ingredients

  validates :name, presence: true, uniqueness: true
end
