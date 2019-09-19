class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist.save

    redirect_to artist_path(@artist)
  end
end
