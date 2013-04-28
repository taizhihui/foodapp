class Item < ActiveRecord::Base
  belongs_to :restaurant
  attr_accessible :description, :name
end
