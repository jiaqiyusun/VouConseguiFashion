class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  layout "dashboard"
  before_action :authenticate_admin!
  # GET /products or /products.json
  def index
    @products = Product.all
  end

  def index_customer
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
    @product_images = @product.product_images.all
  end

  # GET /products/new
  def new
    @product = Product.new
    @status = ["off","on"]
    @root_categories = Category.roots
    @product_images = @product.product_images.build

  end

  # GET /products/1/edit
  def edit
    @status = ["off","on"]
    @root_categories = Category.roots
    render action: :new
  end

  # POST /products or /products.json
  def create

    @product = Product.new(product_params)
    @root_categories = Category.roots
     
    if @product.save
      respond_to do |format|
        if @product.save
          (params[:product_images]['image']).each do |img|
            @product_images = @product.product_images.create!(:image => img,:product_id => @product.id)
           end

          format.html { redirect_to @product, notice: "Product was successfully created." }
          format.json { render :show, status: :created, location: @product }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    else
      render action: :new
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    @root_categories = Category.roots
    respond_to do |format|
      if @product.update(product_params)

      if(params[:product_images]!=nil) then
          @product.product_images.destroy_all
        
        (params[:product_images]['image']).each do |img|
          @product_images = @product.product_images.create!(:image => img,:product_id => @product.id)
        end
      end

        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:category_id, :title, :price_current, :price, :description, :status, product_images: 
        [:id, :product_id, :image])
    end
end
