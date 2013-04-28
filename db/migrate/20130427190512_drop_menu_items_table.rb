class DropMenuItemsTable < ActiveRecord::Migration
  def self.up
  	drop_table :menu_items
  end

  def self.down
  	raise ActiveRecord::IrreversibleMigration
  end
end
