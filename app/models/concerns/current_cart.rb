
module CurrentCart
    extend ActiveSupport::Concern
  
    included do
      before_action :set_cart
    end
  
    private
  
    def set_cart
        @current_cart = Cart.find_by(id: session[:cart_id]) || Cart.create
        session[:cart_id] = @current_cart.id
      
        if user_signed_in? && @current_cart.user_id != current_user.id
          @current_cart.update(user: current_user)
        end
      end
      
  end
  