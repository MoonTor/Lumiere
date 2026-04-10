# app/controllers/carts_controller.rb
# Main controller for carts. Note: 1 cart per user

class CartsController < ApplicationController
  before_action :authenticate_user!
  def show
    @cart = current_user.cart || current_user.create_cart
  end
end
