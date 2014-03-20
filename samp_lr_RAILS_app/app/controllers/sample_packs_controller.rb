class SamplePacksController < ApplicationController
  def play
    @sample_pack = SamplePack.find(params[:id])
    @songs = Song.all
  end
end
