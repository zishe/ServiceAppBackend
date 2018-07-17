module ProductsHelper
  def product_with_ingredients_and_image(products)
    json_array = JSON.parse(products.to_json(include: { ingredients: { include: [:ingredient_types, :tags] } } ))

    products.map do |product_entity|
      obj = json_array.find { |product_hash| product_hash['id'] == product_entity.id }
      obj['image'] = url_for(product_entity.image)
      obj
    end
  end
end

