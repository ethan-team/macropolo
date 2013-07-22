class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :code
      t.string :name
      t.string :name_en
      t.references :offer_owner
      t.references :offer_region
      t.references :offer_status
      t.references :offer_type
      t.references :offer_source_type
      t.references :offer_source 
      t.text :description
      t.string :address      
      t.string :address_en
      t.float :longitude
      t.float :latitude
      t.integer :bedroom_count
      t.integer :bathroom_count
      t.integer :total_room_count
      t.integer :total_bed_count
      t.integer :size_in_m2
      t.integer :max_guest_count
      t.integer :min_nights
      t.integer :max_nights
      t.string :contact_info
      t.string :contact_phone
      t.string :contact_mobile
      t.string :contact_email
      t.decimal :checkin_after
      t.decimal :checkout_before
      t.text :nearby
      t.text :amenities
      t.text :rules
      t.text :remark

      t.timestamps
    end
    add_index :offers, :code, :unique => true
    add_index :offers, :offer_owner_id
    add_index :offers, :offer_region_id
    add_index :offers, :offer_status_id
    add_index :offers, :offer_type_id
    add_index :offers, :offer_source_type_id
  end
end
