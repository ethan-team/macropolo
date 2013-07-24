class CreateOfferImages < ActiveRecord::Migration
  def change
    create_table :offer_images do |t|
      t.references :offer
      t.string :uri
      t.string :preview_uri
      t.integer :width
      t.integer :height
      t.boolean :is_primary
      t.string :label
      t.integer :seq

      t.timestamps
    end
    add_index :offer_images, :offer_id
  end
end
