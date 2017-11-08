class ReviewsController < ApplicationController
  def index
    @reviews = Reviews.all
  end

  def create
    @review = Reviews.create(review_params)
    @review.save
  end

  def new
    @reviews = Reviews.new
  end

  private

  def review_params
   params.require(:review).permit(:content, :rating, :restaurant_id)
  end

end
