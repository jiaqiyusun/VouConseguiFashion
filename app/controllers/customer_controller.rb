class CustomerController < ApplicationController
  layout "site"
  def index_customer
    @products = Product.all.where(:status=>"on")
  end

  def productos_categoria
    @products = Product.all.where(:category_id=>params[:id_categoria])
  end
  
  def details_product
    @product = Product.find(params[:id])
  end
  def productos_desconto
    kids = Category.find(params[:id_categoria]).children
    my_product = Product.all.where(:category_id=>params[:id_categoria]);
    p = []
    my_product.each do |single|
      p.push(single)
    end

    kids.each do |k|
        p2 =Product.where("category_id = ? AND price_current<price",k.id)
        p2.each do |single|
          p.push(single)
        end
    end
    @products = p

  end

  def all_sub category
   
  end


end
