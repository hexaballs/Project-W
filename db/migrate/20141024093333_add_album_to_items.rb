class AddAlbumToItems < ActiveRecord::Migration
  def change
    add_column :items, :album_id, :belongs_to
  end
end
