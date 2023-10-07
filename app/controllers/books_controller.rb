class BooksController < ApplicationController
  def top
  end
  
  def create
    @book = Book.new(book_params)
    book.save
    redirect_to action: :index
  end
  
  def index
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
