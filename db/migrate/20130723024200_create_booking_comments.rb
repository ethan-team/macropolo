class CreateBookingComments < ActiveRecord::Migration
  def change
    create_table :booking_comments do |t|
      t.references :booking
      t.references :user
      t.text :body

      t.timestamps
    end
    add_index :booking_comments, :booking_id
    add_index :booking_comments, :user_id
  end
end
