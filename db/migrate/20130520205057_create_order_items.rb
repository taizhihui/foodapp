class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.string :user_name
      t.string :item_name
      t.string :notes

      t.timestamps
    end
  end
end
