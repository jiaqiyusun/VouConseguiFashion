class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :title
      t.string :status, default: 'off'
      t.string :uuid
      t.decimal :price_current, precision: 10, scale: 2
      t.decimal :price, precision: 10, scale: 2
      t.text :description

      t.timestamps
    end

    add_index :products, [:status, :category_id]
    add_index :products, [:category_id]
    add_index :products, [:uuid], unique: true
    add_index :products, [:title]
  end
end
