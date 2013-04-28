class DropMenuItemsTable < ActiveRecord::Migration
  def up
  	drop_table :menu_items
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
