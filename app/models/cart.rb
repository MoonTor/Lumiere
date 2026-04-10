# app/models/cart.rb
# Main model for the cart

class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
end
