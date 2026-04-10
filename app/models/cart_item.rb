# app/models/cart_item.rb
# Main model for the cart items

class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
end
