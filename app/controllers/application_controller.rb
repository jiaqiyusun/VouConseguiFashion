class ApplicationController < ActionController::Base
    before_action :load_menu

    protected
    def load_menu
        @product = Product.new
        @colors = Color.all
        @sizes = Size.all

        @status = ["off","on"]
        @root_categories = Category.roots
        @product_images = @product.product_images.build
    end
end
