class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user
      t.references :offer
      t.references :booking_status
      t.string :guest_name
      t.string :guest_contact_info
      t.string :guest_extra_info
      t.float  :total_payment_in_rmb 
      t.date   :checkin_date
      t.date   :checkout_date
      t.integer :guests_count
      t.integer :kids_count

      t.timestamps
    end
    add_index :bookings, :user_id
    add_index :bookings, :offer_id
    add_index :bookings, :booking_status_id
  end
end
