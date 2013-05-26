class RenameUserNameToUserId < ActiveRecord::Migration
  def self.up
  	rename_column :order_items, :user_name, :user_id
  end

  def down
  rename_column :order_items, :user_id, :user_name
  end
end
