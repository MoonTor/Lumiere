# app/models/order_item.rb
# This model represents one product inside an order

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
