class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])
    if @album.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  def create
    if Album.create(album_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :artist)
  end

end