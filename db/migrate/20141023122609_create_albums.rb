class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :look_type
      t.string :look_title
      t.text :look_desc
      t.string :img_url
      t.string :link_url

      t.timestamps
    end
  end
end
