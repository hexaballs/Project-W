class Album < ActiveRecord::Base
  has_many :items
  accepts_nested_attributes_for :items, :reject_if => lambda { |a| a[:content].blank? }
  validates_presence_of :img_url, :look_title, :look_type
end
