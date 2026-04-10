# app/models/product.rb
# This is the model for product

class Product < ApplicationRecord
  has_one_attached :image

  has_many :reviews, dependent: :destroy
  has_many :cart_items
  has_many :order_items
end
