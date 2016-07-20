class AddSalesTaxInToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :sales_tax_in, :float, default:0
  end
end
