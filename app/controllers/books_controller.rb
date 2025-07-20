class BooksController < ApplicationController
  def new
    
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @list = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
