class CreateVouchers < ActiveRecord::Migration
  def change
    create_table :vouchers do |t|
      t.references :booking
      t.references :user
      t.string :name
      t.integer :amount_in_rmb
      t.integer :amount_used_in_rmb
      t.date :expired_date

      t.timestamps
    end
    add_index :vouchers, :booking_id
    add_index :vouchers, :user_id
  end
end
