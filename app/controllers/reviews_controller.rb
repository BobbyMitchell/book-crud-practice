class ReviewsController < ApplicationController

  before_action :set_book
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.book = Book.find(params[:book_id])
    @review.save
    redirect_to book_path(@book)
  end

  private
  def set_book
    @book = Book.find(params[:book_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
