class AddSampleIdAndSongIdToSamplePlays < ActiveRecord::Migration
  def change
    add_column :sample_plays, :song_id, :integer
    add_column :sample_plays, :sample_id, :integer
  end
end
