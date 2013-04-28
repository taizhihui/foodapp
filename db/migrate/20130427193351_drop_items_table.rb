class DropItemsTable < ActiveRecord::Migration
  def up
  	drop_table :items
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
