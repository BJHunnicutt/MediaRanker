class BooksController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def upvote
    book = Book.find(params[:id])
    book.increment!(:rank)
    book.save
    redirect_to(:back)
  end
end
