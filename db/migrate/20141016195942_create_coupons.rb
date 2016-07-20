class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.datetime :start_date
      t.datetime :end_date
      t.string :coupon_type
      t.integer :coupon_value
      t.integer :use_count
      t.text :notes

      t.timestamps
    end
  end
end
