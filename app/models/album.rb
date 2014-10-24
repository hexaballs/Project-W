class Album < ActiveRecord::Base
  has_many :items
end
