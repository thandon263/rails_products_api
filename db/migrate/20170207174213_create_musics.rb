class CreateMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
