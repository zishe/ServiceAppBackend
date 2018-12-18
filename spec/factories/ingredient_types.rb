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
    name { Faker::Name.unique.name }
    description { Faker::Lorem.sentence(3) }
  end
end
