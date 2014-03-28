class AddSamplePackIdToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :sample_pack_id, :integer
  end
end
