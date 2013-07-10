class CreateMakes < ActiveRecord::Migration
  def change
    create_table :makes do |t|
      t.integer :music_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
