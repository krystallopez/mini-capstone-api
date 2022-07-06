class AddInventoryTrackingtoProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory_tracking, :integer
  end
end
