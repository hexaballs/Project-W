class RemoveLookTypeFromAlbums < ActiveRecord::Migration
  def change
    remove_column :albums, :look_type
  end
end
