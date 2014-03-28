class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.string :key_mapped_to
      t.string :url

      t.timestamps
    end
  end
end
