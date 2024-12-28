module ProductsHelper

  # Returns the name of the product author or "Unknown" if not available
  def product_author(product)
    product.user.present? ? product.user.name : "Unknown"
  end
end
