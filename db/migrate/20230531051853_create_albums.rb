class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :img_url
      t.string :album_name
      t.string :artist_name
      t.integer :rating

      t.timestamps
    end
  end
end
