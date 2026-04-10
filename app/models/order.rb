# app/models/order.rb
# This model represents one completed order

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  # makes sure the form fields arent blank
  validates :shipping_name, :address, :city, :state, :zip, presence: true
end
