class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @sample_packs = SamplePack.all
  end
end
