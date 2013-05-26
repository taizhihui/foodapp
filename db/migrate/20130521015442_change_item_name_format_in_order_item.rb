class ChangeItemNameFormatInOrderItem < ActiveRecord::Migration
  def self.up
  	change_column :order_items, :item_name, :integer
  end

  def self.down
  	change_column :order_items, :item_name, :string
  end
end
