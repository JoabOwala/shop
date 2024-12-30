class Product < ApplicationRecord
 
  has_many :line_items, dependent: :restrict_with_error
  has_many :cart_items
  before_destroy :ensure_not_referenced_by_any_line_item
  belongs_to :user, optional: true

  mount_uploader :image, ImageUploader
  serialize :image, JSON # If you use SQLite, add this line

  validates :title, :brand, :price, :model, presence: true
  # Set max lenght to the description, price and title 
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
  validates :price, length: { maximum: 10 }

  # You can input more brands finish and condition here
  BRAND = %w{ Ferrari Opel Lenovo Fossil}
  FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }

  private

  # Ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.exists?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
