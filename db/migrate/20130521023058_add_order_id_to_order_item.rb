class AddOrderIdToOrderItem < ActiveRecord::Migration
  def change
    add_column :order_items, :fieldname, :integer
  end
end
