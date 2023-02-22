class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new(params.require(:author).permit(:name))
    if author.save
      flash[:notice] = 'Successfull save'
      redirect_to authors_path
    else
      flash[:alert] = 'Failed'
      render :new
    end
  end
end