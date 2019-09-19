class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params(:name, :bio))
    @artist.save

    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end
