class AlbumsController < ApplicationController
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
    album = Album.find(params[:id])
    album.increment!(:rank)

    album.save

    redirect_to(:back)
  end
end
