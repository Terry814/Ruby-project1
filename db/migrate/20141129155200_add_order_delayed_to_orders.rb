class AddOrderDelayedToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_delayed, :integer, default: 0
  end
end
