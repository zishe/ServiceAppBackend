module Types
  class CategoryType < Types::BaseObject
    graphql_name "Category"

    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :image, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false

    field :products, [Types::ProductType], null: true
  end
end
