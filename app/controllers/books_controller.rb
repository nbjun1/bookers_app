class BooksController < ApplicationController
 def index
   @books = Book.all
 end

 def new
   @book = Book.new
 end

 def create
   book = Book.new(book_params)

   book.save

   redirect_to book_path(book)

 end

 def show
   @books = Book.where(id: params[:id])

 end

 def edit
   @book = Book.find(params[:id])


 end

 def update
   book = Book.find(params[:id])

   if book.update(book_params)
    redirect_to action: :index, notice: 'Book was successfully update'
   else
    redirect_to request.referer
   end
 end

 def destroy
   @book = Book.find(params[:id])
   @book.destroy

   redirect_to '/books', notice: 'Book was successfully destroyed.'

 end

 private
 def book_params
   params.permit(:title, :body)
 end
end
