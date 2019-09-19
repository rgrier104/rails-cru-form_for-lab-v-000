class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save

    redirect_to song_path(@song)
  end

  def show
    @song = song.find(params[:id])
  end

  def update
    @song = song.find(params[:id])
    @song.update(song_params(:name, :bio))

    redirect_to song_path(@song)
  end

  def edit
    @song = song.find(params[:id])
  end

  private

  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
