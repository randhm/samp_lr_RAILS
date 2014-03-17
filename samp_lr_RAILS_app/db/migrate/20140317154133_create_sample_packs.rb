class CreateSamplePacks < ActiveRecord::Migration
  def change
    create_table :sample_packs do |t|
      t.string :name

      t.timestamps
    end
  end
end
