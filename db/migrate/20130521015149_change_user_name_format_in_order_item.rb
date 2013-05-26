class ChangeUserNameFormatInOrderItem < ActiveRecord::Migration
  def self.up
  	change_column :order_items, :user_name, :integer
  end

  def self.down
  	change_column :order_items, :user_name, :string
  end
end
