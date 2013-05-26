class OrderItem < ActiveRecord::Base
  attr_accessible :item_id, :notes, :user_id, :order_id

  belongs_to :user
  belongs_to :order
  belongs_to :item

  validates :user_id, :uniqueness => { :scope => :order_id, :message => "don't be greedy now!"}
end
