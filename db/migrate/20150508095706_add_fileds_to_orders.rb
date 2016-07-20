class AddFiledsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :billing_ship_to_name, :string
    add_column :orders, :billing_street_address_first_line, :string
    add_column :orders, :billing_street_address_second_line, :string
    add_column :orders, :billing_city, :string
    add_column :orders, :billing_province, :string
    add_column :orders, :billing_zipcode, :string
    add_column :orders, :billing_phone, :string

    add_column :orders, :phone, :string
  end
end
