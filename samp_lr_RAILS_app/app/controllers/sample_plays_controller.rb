class SamplePlaysController < ApplicationController
  def create
    @song = Song.find(session[:song_id])
    @sample_play = @song.sample_plays.build
    @sample_play.sample = Sample.find(params[:sample_id])

  end
end
