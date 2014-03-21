class SamplesController < ApplicationController

  def index
    @song = Song.find(params[:song_id])
    @sample_plays = @song.sample_plays.all

    respond_to do |format|
        format.json {render json: @sample_plays.to_json(include: :sample)}
    end
  end


end
