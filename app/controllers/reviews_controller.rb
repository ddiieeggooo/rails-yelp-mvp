class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@review.restaurant_id)
    else
      render '/restaurants/show', status: :unprocessable_entity
    end
  end
end

def review_params
  params.require(:review).permit(:content, :rating)
end
