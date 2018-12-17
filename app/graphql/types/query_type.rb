module Types
  class QueryType < Types::BaseObject
    include ApiHelper
    # include ProductsHelper

    graphql_name "RootQuery"

    field :categories, [CategoryType], null: false do
      description "gets all categories"
      argument :limit, Int, required: true
    end
    field :products, [ProductType], null: false do
      description "gets all products"
    end

    def categories(opts)
      byebug
      categories = Category.with_preloaded_image
      result = with_images(categories).to_camelback_keys
      # byebug
      result
    end

    def products
      products = Product.all
      # product_with_ingredients_and_image(products).to_camelback_keys
    end
  end
end
