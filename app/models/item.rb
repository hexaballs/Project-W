class Item < ActiveRecord::Base
  belongs_to :album
  # validates_presence_of :name, :img_url, :item_class
end
