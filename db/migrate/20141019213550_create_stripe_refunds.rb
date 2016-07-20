class CreateStripeRefunds < ActiveRecord::Migration
  def change
    create_table :stripe_refunds do |t|
      t.integer :stripe_charge_id
      t.string :refund_id
      t.integer :amount

      t.timestamps
    end
  end
end
