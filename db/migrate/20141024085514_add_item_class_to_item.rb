class AddItemClassToItem < ActiveRecord::Migration
  def change
    add_column :items, :item_class, :string
  end
end
