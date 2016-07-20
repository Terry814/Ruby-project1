class AddPickupToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :pickup, :boolean
  end
end
