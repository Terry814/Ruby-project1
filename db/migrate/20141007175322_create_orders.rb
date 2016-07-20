class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id

      t.datetime :date_needed
      t.integer :amount
      t.integer :days_needed
      t.datetime :date_due
      t.integer :coupon_id
      t.text :comment

      t.datetime :authorized
      t.boolean :pulled, default:false
      t.boolean :paid, default:false
      t.datetime :shipped
      t.datetime :returned

      t.string :shipping_method
      t.string :ship_to_name
      t.string :street_address_first_line
      t.string :street_address_second_line
      t.string :city
      t.string :province
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
