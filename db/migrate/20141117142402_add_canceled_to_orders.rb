class AddCanceledToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :canceled, :string, null:true
  end
end
