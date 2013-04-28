class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :restaurant

      t.timestamps
    end
    add_index :items, :restaurant_id
  end
end
