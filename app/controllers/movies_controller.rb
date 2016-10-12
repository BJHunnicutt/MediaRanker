class MoviesController < ApplicationController
  def index
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def upvote
    movie = Movie.find(params[:id])
    movie.increment!(:rank)
    movie.save

    redirect_to(:back)
  end

end
