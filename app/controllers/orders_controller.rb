# app/controllers/orders_controller.rb
# This controller handles checkout and viewing orders

class OrdersController < ApplicationController
  before_action :authenticate_user!

  # Shows checkout form
  def new
    @cart = current_user.cart

    if @cart.nil? || @cart.cart_items.empty?
      redirect_to cart_path, alert: "Your cart is empty."
      return
    end

    @order = Order.new
  end

  # Creates a completed order from the current cart
  def create
    cart = current_user.cart

    if cart.nil? || cart.cart_items.empty?
      redirect_to cart_path, alert: "Your cart is empty."
      return
    end

    total = cart.cart_items.sum do |item|
      item.product.price * item.quantity
    end

    order = current_user.orders.create!(
      order_params.merge(
        total: total,
        status: "placed"
      )
    )

    cart.cart_items.each do |item|
      order.order_items.create!(
        product: item.product,
        quantity: item.quantity,
        price: item.product.price
      )

      product = item.product
      product.update!(stock: product.stock - item.quantity)
    end

    cart.cart_items.destroy_all

    redirect_to order_path(order), notice: "Order placed successfully."
  end

  # Shows one completed order
  def show
    @order = current_user.orders.find(params[:id])
  end

  # Shows all orders for the current user
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  private

  def order_params
    params.require(:order).permit(:shipping_name, :address, :city, :state, :zip)
  end
end
