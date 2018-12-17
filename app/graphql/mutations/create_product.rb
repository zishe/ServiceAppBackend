module Mutations
  class CreateProduct < Mutations::BaseMutation
    null true

    argument :name, String, required: true
    argument :description, Integer, required: false

    # field :categories, [CategoryType], null: true
    field :errors, [String], null: false

    def resolve(name:, description:)
      product = Product.new(name: name, description: description)
      if product.save
        # Successful creation, return the created object with no errors
        {
          product: product,
          errors: []
        }
      else
        # Failed save, return the errors to the client
        {
          product: nil,
          errors: product.errors.full_messages
        }
      end
    end
  end
end
