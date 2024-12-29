
class CartItemsController < ApplicationController
    def create
      product = Product.find(params[:product_id])
      current_item = @current_cart.cart_items.find_by(product: product)
  
      if current_item
        current_item.increment(:quantity)
      else
        current_item = @current_cart.cart_items.build(product: product, quantity: 1)
      end
  
      current_item.save
      redirect_to cart_path, notice: "Added to your cart."
    end
  
    def destroy
      item = @current_cart.cart_items.find(params[:id])
      item.destroy
      redirect_to cart_path, notice: "Removed from your cart."
    end
  end
  