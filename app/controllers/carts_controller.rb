
class CartsController < ApplicationController
    def show
      @cart = @current_cart
    end
  
    def empty
      @current_cart.cart_items.destroy_all
      redirect_to root_path, notice: "Your cart has been emptied."
    end
  end
  