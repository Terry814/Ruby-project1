class AddOrderNoToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :order_no, :string
  end
end
