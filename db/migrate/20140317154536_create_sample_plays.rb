class CreateSamplePlays < ActiveRecord::Migration
  def change
    create_table :sample_plays do |t|
      t.integer :time_played

      t.timestamps
    end
  end
end
