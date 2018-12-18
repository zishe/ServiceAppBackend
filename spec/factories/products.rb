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

FactoryBot.define do
  factory :product do
    name { Faker::Name.unique.name }
    description { Faker::Lorem.sentence(3) }
    serving_weight { Faker::Number.number(3) }
  end
end
