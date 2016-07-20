class AddDateFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :due_back_warning, :datetime
    add_column :orders, :due_back_confirm, :datetime
  end
end
