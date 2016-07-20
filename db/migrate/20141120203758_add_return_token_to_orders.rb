class AddReturnTokenToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :return_token, :string
  end
end
