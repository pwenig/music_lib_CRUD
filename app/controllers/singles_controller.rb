class SinglesController < ApplicationController

  def index
    @singles = Single.where(album_id: params[:album_id])
  end
end