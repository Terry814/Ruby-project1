class CreateOrderNotes < ActiveRecord::Migration
  def change
    create_table :order_notes do |t|
      t.integer :order_id
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
