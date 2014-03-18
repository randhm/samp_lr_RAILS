class ChangeTimePlayedToPlayedAtMillisecond < ActiveRecord::Migration
  def up
    rename_column :sample_plays, :time_played, :played_at_millisecond
  end

  def down
  end
end
