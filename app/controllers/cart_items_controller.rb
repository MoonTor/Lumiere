# app/controllers/cart_items_controller.rb
# This controller handles adding, updating, and removing cart items

class CartItemsController < ApplicationController
  before_action :authenticate_user!

  # Adds one product to the current user's cart
  def create
    cart = current_user.cart || current_user.create_cart
    product = Product.find(params[:product_id])

    existing_item = cart.cart_items.find_by(product_id: product.id)

    if existing_item
      # Do not allow quantity to go above stock
      if existing_item.quantity >= product.stock
        redirect_back fallback_location: product_path(product), alert: "Cannot add more than available stock."
        return
      end

      existing_item.quantity += 1
      existing_item.save
    else
      # Do not allow adding an out-of-stock item
      if product.stock <= 0
        redirect_back fallback_location: product_path(product), alert: "This item is out of stock."
        return
      end

      cart.cart_items.create(
        product_id: product.id,
        quantity: 1
      )
    end

    redirect_back fallback_location: product_path(product), notice: "Item added to cart."
  end

  # Updates the quantity of an existing cart item
  def update
    cart = current_user.cart
    item = cart.cart_items.find(params[:id])
    product = item.product

    new_quantity = params[:quantity].to_i

    # If quantity becomes 0 or less, remove the item completely
    if new_quantity <= 0
      item.destroy
      redirect_to cart_path, notice: "Item removed from cart."
      return
    end

    # Prevent quantity from exceeding available stock
    if new_quantity > product.stock
      redirect_to cart_path, alert: "Only #{product.stock} item(s) available in stock."
      return
    end

    item.update(quantity: new_quantity)
    redirect_to cart_path, notice: "Cart updated."
  end

  # Removes a cart item completely
  def destroy
    item = current_user.cart.cart_items.find(params[:id])
    item.destroy

    redirect_to cart_path, notice: "Item removed from cart."
  end
end
