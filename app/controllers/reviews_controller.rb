class ReviewsController < ApplicationController

  before_action :set_book
  def new
    @review = Review.new
  end

  def create
  end

  private
  def set_book
    @book = Book.find(params[:book_id])
  end
end
