class SongsController < ApplicationController

  def create
    @song = Song.new
    if @song.save
      session[:song_id] = @song.id
    else
      # let the user know there was a problem creating the song
    end

  end
end
