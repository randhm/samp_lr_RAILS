class ChangeSampleIdToString < ActiveRecord::Migration
  def up
    change_column :sample_plays, :sample_id, :string
  end

  def down
  end
end



