class AddImageFromProductImage < ActiveRecord::Migration[6.0]
  def change
    add_column :product_images, :image, :string
  end
end
