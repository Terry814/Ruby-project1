class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_reference_no, :string
    add_column :orders, :shipping_message, :text
  end
end
