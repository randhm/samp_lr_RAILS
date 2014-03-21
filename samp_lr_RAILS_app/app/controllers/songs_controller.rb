class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

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

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end



end
