class CreateIngredientTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_types do |t|
      t.string :name, index: true
      t.string :description
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
