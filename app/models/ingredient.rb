# == Schema Information
#
# Table name: ingredients
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Ingredient < ApplicationRecord
  acts_as_taggable

  has_and_belongs_to_many :products
  has_many :ingredient_types

  validates :name, presence: true, uniqueness: true

  def tag_list=(value)
    self.tags = value.split(",").map do |name|
      ActsAsTaggableOn::Tag.find_or_initialize_by(name: name)
    end
    save
  end
end

class Tag < ActsAsTaggableOn::Tag
end
class Tagging < ActsAsTaggableOn::Tagging
end
