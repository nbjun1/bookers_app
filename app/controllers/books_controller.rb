class BooksController < ApplicationController
 def index
   @books = Book.all
 end

 def new

 end

 def create
   @book = Book.show(book_params)

  if @book.save

    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)
  else
   render :new
  end
 end

 def show

 end

 def edit

 end

 def update

 end

 def destroy

 end

 private

 def book_params
   params.require(:book).permit(:title, :body, )
 end
end
