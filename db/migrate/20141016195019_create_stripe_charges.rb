class CreateStripeCharges < ActiveRecord::Migration
  def change
    create_table :stripe_charges do |t|
      t.integer :order_id
      t.string :charge_id
      t.integer :amount
      t.string :last_4_digits
      t.string :card_type
      t.string :exp_month
      t.string :exp_year
      t.text :admin_memo
      t.text :invoice_memo
      t.string :charge_type

      t.timestamps
    end
  end
end
