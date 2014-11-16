class BooksController < ApplicationController
  def index
  	@books = Book.all
  end

  def new
  	@book = Book.new
  end

  def create
  	secure_params = params.require(:book).
  	                               permit(:title, :date, :writer, :publisher, :content)
  	@book = Book.new(secure_params)
  	if @book.save
  		redirect_to action: 'index', notice: 'Book was successfully created.'
  	else
  		render action: "new"
    end
  end
end