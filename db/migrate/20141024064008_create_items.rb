class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.float :price
      t.text :item_desc
      t.string :item_type
      t.string :defining_color
      t.string :defining_texture
      t.string :img_url
      t.string :link_url

      t.timestamps
    end
  end
end
