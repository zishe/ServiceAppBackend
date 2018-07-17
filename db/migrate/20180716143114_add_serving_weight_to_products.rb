class AddServingWeightToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :serving_weight, :integer
  end
end
