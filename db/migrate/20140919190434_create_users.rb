class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :session_token
      t.string :time_zone
      t.string :password_reset_token
      t.datetime :password_reset_sent_at

      t.string :last_4_digits
      t.string :card_type
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
