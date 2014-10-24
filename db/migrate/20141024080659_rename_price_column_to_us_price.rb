class RenamePriceColumnToUsPrice < ActiveRecord::Migration
  def change
    rename_column :items, :price, :us_price
  end
end
