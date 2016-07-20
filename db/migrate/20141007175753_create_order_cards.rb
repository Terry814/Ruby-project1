class CreateOrderCards < ActiveRecord::Migration
  def change
    create_table :order_cards do |t|
      t.integer :order_id
      t.integer :card_id
      t.integer :current_price
      t.integer :quantity, default:1

      t.timestamps
    end
  end
end
