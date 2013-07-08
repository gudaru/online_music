class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.text :lyrics
      t.string :m_src

      t.timestamps
    end
  end
end
