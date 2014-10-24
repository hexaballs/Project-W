class AddLinkNameToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :link_name, :string
  end
end
