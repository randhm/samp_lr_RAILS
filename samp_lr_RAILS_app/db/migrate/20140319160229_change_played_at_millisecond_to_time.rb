class ChangePlayedAtMillisecondToTime < ActiveRecord::Migration
  def up
    remove_column :sample_plays, :played_at_millisecond
    add_column :sample_plays, :played_at_millisecond, :string
  end

  def down
    remove_column :sample_plays, :played_at_millisecond
    add_column :sample_plays, :played_at_millisecond, :string
  end
end
