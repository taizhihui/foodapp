class Restaurant < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true
  has_many :items, :dependent => :destroy
  has_many :orders, :dependent => :destroy
end
