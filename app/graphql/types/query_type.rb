module Types
  class QueryType < Types::BaseObject
    graphql_name "RootQuery"

    field :categories, [Types::CategoryType], null: false

    def categories
      Category.all
    end
  end
end
