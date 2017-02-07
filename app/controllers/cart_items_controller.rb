class CartItemsController < ApplicationController
  def destroy
    @cart = current_cart
    @cart_item = Cart_item(params[:id])
    @cart_item.destroy
    redirect_to :back
  end
end
