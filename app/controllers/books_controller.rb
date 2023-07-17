class BooksController < ApplicationController
 def index
   @books = Book.all
   @book = Book.new
 end

 def new
   @book = Book.new
 end

 def create
   @book = Book.new(book_params)
   #byebug
   if @book.save

    flash[:notice] = "Book was successfully created"
    redirect_to book_path(@book)

   else
    @books = Book.all
    render :index

   end
 end

 def show
   @books = Book.where(id: params[:id])

 end

 def edit
   @book = Book.find(params[:id])


 end

 def update

   @book = Book.find(params[:id])
   #byebug
   if @book.update(book_params)

    redirect_to book_path
     flash[:notice] = "Book was successfully update"

   else
    render :edit
   end
 end

 def destroy
   @book = Book.find(params[:id])
   @book.destroy

   redirect_to '/books', notice: 'Book was successfully destroyed.'

 end

 private
 def book_params
   params.required(:book).permit(:title, :body)
 end
end
