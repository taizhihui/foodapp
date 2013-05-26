class RenameFieldnameToOrderId < ActiveRecord::Migration
  def self.up
  	rename_column :order_items, :fieldname, :order_id
  end

  def down
  rename_column :order_items, :order_id, :fieldname
  end
end
