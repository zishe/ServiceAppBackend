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

FactoryBot.define do
  factory :ingredient do
    name { "MyString" }
    description { "MyString" }
  end
end
