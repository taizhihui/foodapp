class User < ActiveRecord::Base
  attr_accessible :email, :name

  validates :email, :name, :presence => true, :uniqueness => true

  has_many :order_items, :dependent => :destroy
  
  def self.authenticate(name)
  	user = find_by_name(name)
  end
end
