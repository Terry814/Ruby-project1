class AddAvailableToOrderCards < ActiveRecord::Migration
  def change
    add_column :order_cards, :available, :boolean
  end
end
