class Cart < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    belongs_to :user, optional: true


    def total_price
        cart_items.to_a.sum { |item| item.product.price * item.quantity }
    end

    def total_items
        cart_items.sum(:quantity)
    end
end
