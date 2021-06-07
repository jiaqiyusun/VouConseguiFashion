class CreateSizeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :size_products do |t|
      t.references :size, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
