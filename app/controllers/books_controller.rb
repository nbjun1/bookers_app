class BooksController < ApplicationController
 def index
   @books = Book.all
   @book = Book.new
 end

 def create
   book = Book.new(book_params)

   book.save

   redirect_to book_path(book)

 end

 def show
   @books = Book.find(params[:id])

 end

 def edit
   @book = Book.find(params[:id])
 end

 def update


 end

 def destroy
   @delete = book.find(params[:id])

    if @book.destroy
     redirect_to book_path, notice:"Book was successfully destroyed."
    end
 end

 private
  def book_params
   params.require(:book).permit(:title, :body)
  end
end
