class SamplePlaysController < ApplicationController
  def create
    @song = Song.find(session[:song_id])
    @sample_play = @song.sample_plays.build(params[:sample_play])

    respond_to do |format|
      if @sample_play.save
        format.json { render json: @sample_play, status: :created, location: @sample_play }
      else
        format.json { render json: @sample_play.errors, status: :unprocessable_entity }
      end
    end

  end
end
