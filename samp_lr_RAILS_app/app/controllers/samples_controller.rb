class SamplesController < ApplicationController

  def index
    @index = 27
    @song = Song.find(session[:song_id])
    @sample_plays = @song.sample_plays.all

    respond_to do |format|
        format.json { render json: @sample_plays}
    end
  end


end
