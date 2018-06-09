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

FactoryBot.define do
  factory :ingredient_type do
    name "MyString"
    description "MyString"
  end
end
