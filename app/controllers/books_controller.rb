class BooksController < ApplicationController

  def index
  @book = Book.new
  @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
   book = Book.new(book_params)
   book.save
   redirect_to book_path(book.id)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def top
  end

   def update
   book = Book.find(params[:id])
   book.update(book_params)
   redirect_to book_path(book.id)
   end

   def destroy
     book = Book.find(params[:id])
     book.destroy
     redirect_to books_path
   end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end
