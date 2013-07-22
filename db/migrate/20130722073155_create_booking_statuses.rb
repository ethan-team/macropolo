class CreateBookingStatuses < ActiveRecord::Migration
  def change
    create_table :booking_statuses do |t|
      t.integer :code
      t.string :name
      t.string :name_en

      t.timestamps
    end
  end
end
