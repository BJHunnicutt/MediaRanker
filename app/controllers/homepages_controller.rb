class HomepagesController < ApplicationController
  def index
    @movies = Movie.all
    @books = Book.all
    @albums = Album.all
  end

  def show
  end
end
