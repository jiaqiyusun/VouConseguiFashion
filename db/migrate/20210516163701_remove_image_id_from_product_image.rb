class RemoveImageIdFromProductImage < ActiveRecord::Migration[6.0]
  def change
    remove_column :product_images, :image_id, :integer
  end
end
