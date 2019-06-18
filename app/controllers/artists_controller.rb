class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
      flash[:success] = "Artist Added"
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:name)
  end

end