class ProductsController < ApplicationController
  def index
    if params[:category].blank?
    @products = Product.all
    else
      @category_id = Category.find_by(name: params[:category]).id
      @products = Product.where(:category_id => @category_id)
    end
  end
  def show
    @product = Product.find(params[:id])
    @photos = @product.photos.all
  end
end
