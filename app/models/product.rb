class Product < ApplicationRecord
    belongs_to :category
    has_many :colorProducts
    has_many :sizeProducts

    has_many :product_images
    accepts_nested_attributes_for :product_images, allow_destroy: true, reject_if: :all_blank


    validates :category_id, presence: { message: "category not null" }
    validates :title, presence: { message: "title not null" }
    validates :status, inclusion: { in: %w[on off], 
        message: "status will be on | off" }
end
