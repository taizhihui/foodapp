class Item < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :description, :name

  has_many :order_items
end
