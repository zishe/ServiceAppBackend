require 'ostruct'
require 'json'

module ProductsHelper
  def product_with_ingredients_and_image(products)
    json_array = JSON.parse(products.to_json(include: { ingredients: { include: %i[ingredient_types tags] } }))

    products.map do |product_entity|
      obj = json_array.detect { |product_hash| product_hash["id"] == product_entity.id }

      image_url = Rails.application.routes.url_helpers.rails_blob_path(product_entity.image, host: 'http://localhost:3000/')
      obj["image"] = "http://localhost:3000/#{image_url || ''}"

      OpenStruct.new(obj)
    end
  end
end
