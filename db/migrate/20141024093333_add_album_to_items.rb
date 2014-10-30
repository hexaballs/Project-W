class AddAlbumToItems < ActiveRecord::Migration
  def change
    add_column :items, :album_id, :integer
  end
end
