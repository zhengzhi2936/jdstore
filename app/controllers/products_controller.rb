class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def show
    @product = Product.find(params[:id])
  end
  def edit
    @product = Product.find(params[:id])
  end
  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to "/"
    else
      render :new
    end
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to "/"
    else
      render :edit
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/"
  end
  private
  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end
end
