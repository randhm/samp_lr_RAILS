class SongsController < ApplicationController

  def create
    @song = Song.new
    @song.user = current_user

    respond_to do |format|
      if @song.save
        session[:song_id] = @song.id
        format.json { render json: @song, status: :created, location: @song }
      else
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end
end
