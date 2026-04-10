# app/controllers/products_controller.rb
# The main controller for products

class ProductsController < ApplicationController
  def index
    @current_category = params[:category].presence || "all"
    @current_sort = params[:sort].presence || "default"

    @products = if @current_category == "all"
                  Product.all
    else
                  Product.where(category: @current_category)
    end

    @products = case @current_sort
    when "price_asc"
                  @products.order(price: :asc)
    when "price_desc"
                  @products.order(price: :desc)
    else
                  @products
    end
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end
end
