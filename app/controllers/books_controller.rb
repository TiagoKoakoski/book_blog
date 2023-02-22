class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(params.require(:book).permit(:title, :author_id, :description, :score))
    if book.save
      flash[:notice] = 'Successfull save'
      redirect_to books_path
    else
      flash[:alert] = 'Failed'
      render :new
    end
  end

  def show
    @book = Book.find(params['id'])
  end
end