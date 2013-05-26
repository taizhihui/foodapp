class RenameItemNameToItemId < ActiveRecord::Migration
  def self.up
  	rename_column :order_items, :item_name, :item_id
  end

  def down
  rename_column :order_items, :item_id, :item_name
  end
end
