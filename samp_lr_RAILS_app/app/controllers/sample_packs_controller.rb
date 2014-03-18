class SamplePacksController < ApplicationController
  def play
    @sample_pack = SamplePack.find(params[:id])
  end
end
