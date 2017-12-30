class CreateJoinTableProductsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :ingredients do |t|
      t.index [:product_id, :ingredient_id]
      t.index [:ingredient_id, :product_id]
    end
  end
end
