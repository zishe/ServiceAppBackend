module Types
  class QueryType < Types::BaseObject
    include DataHelper
    include ProductsHelper

    graphql_name "RootQuery"

    field :categories, [CategoryType], null: false do
      description "gets categories by limit"
      argument :limit, Int, required: false
    end

    field :products, [ProductType], null: false do
      description "gets products by limit"
      argument :limit, Int, required: false
    end

    def categories(opts)
      categories = Category.take(opts[:limit] || 10)
      with_images(categories).to_camelback_keys
    end

    def products(opts)
      products = Product.take(opts[:limit] || 10)
      product_with_ingredients_and_image(products).to_camelback_keys
    end
  end
end
