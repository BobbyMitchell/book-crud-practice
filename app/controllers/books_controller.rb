class BooksController < ApplicationController

before_action :find_book, only: [:show]
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.create
  end

  def create
    Book.create(book_params)
    redirect_to books_path

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :genre)
  end

  def find_book
    @book = Book.find(params[:id])
  end



end
