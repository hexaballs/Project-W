class Album < ActiveRecord::Base
  has_many :items
  belongs_to :category
  accepts_nested_attributes_for :items, {
      :reject_if => lambda { |a| a[:item_class].blank? or a[:img_url].blank? },
      :allow_destroy => true
    }
  validates_presence_of :img_url, :look_title
end