class CreateBookingHistories < ActiveRecord::Migration
  def change
    create_table :booking_histories do |t|
      t.references :booking
      t.references :booking_status
      t.string :remark

      t.timestamps
    end
    add_index :booking_histories, :booking_status_id
    add_index :booking_histories, :booking_id
  end
end
