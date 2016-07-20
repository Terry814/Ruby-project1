class AddIndexToOrders < ActiveRecord::Migration
  def change
    add_index :order_cards, :order_id
    add_index :order_cards, :card_id
    add_index :order_cards, :quantity

    add_index :orders, :user_id
    add_index :orders, :date_needed
    add_index :orders, :days_needed
    add_index :orders, :order_delayed
    add_index :orders, :authorized
  end
end
