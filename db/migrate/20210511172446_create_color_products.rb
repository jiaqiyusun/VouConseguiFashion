class CreateColorProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :color_products do |t|
      t.references :color, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
