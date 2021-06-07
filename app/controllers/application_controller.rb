class ApplicationController < ActionController::Base
    before_action :load_menu

    protected
    def load_menu
        @product = Product.new
        @status = ["off","on"]
        @root_categories = Category.roots
        @product_images = @product.product_images.build
    end
end
