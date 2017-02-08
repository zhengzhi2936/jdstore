class CartsController < ApplicationController

  def clean
    current_cart.clean!
    flash[:notice] = "物品清空成功！"
    redirect_to :back
  end
  def checkout
    @order = Order.new
  end
end
