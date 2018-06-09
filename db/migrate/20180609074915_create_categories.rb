class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, uniq: true, index: true
      t.string :description

      t.timestamps
    end
  end
end
