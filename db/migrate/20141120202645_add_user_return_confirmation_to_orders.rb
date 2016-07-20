class AddUserReturnConfirmationToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :user_return_confirmation, :datetime
  end
end
