module Types
  class QueryType < Types::BaseObject
    graphql_name "RootQuery"

    field :categories, [CategoryType], null: false
    field :products, [ProductType], null: false

    def categories
      Category.all
    end

    def products
      Product.all
    end
  end
end
