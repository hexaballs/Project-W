class ChangeStringFormatInAlbum < ActiveRecord::Migration
  def change
    change_column :albums, :img_url, :text
    change_column :albums, :link_url, :text
    change_column :items, :img_url, :text
    change_column :items, :link_url, :text
  end
end
