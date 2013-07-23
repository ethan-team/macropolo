class CreateOfferReviews < ActiveRecord::Migration
  def change
    create_table :offer_reviews do |t|
      t.references :offer
      t.references :user
      t.references :booking
      t.text :body
      t.integer :rating

      t.timestamps
    end
    add_index :offer_reviews, :offer_id
    add_index :offer_reviews, :user_id
    add_index :offer_reviews, :booking_id
  end
end
