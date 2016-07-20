class AddChargeDateToStripeCharges < ActiveRecord::Migration
  def change
    add_column :stripe_charges, :charge_date, :datetime
  end
end
