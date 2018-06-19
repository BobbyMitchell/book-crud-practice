class BooksController < ApplicationController

before_action :find_book, only: :show
  def index
    @books = Book.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def find_book
    @book = Book.find(params[:id])
  end


end
