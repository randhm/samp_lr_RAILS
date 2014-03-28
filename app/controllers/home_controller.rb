class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    # session.delete(:song_id) #TODO: Do we need to clear the session's song_id when we go to the index? ponder this...
    @sample_packs = SamplePack.all
  end
end
