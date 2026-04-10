# app/controllers/reviews_controller.rb
# main controller for reviews

class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])

    @review = @product.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to product_path(@product), notice: "Review added successfully."
    else
      redirect_to product_path(@product), alert: "Could not save review."
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
