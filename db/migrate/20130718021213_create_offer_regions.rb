class CreateOfferRegions < ActiveRecord::Migration
  def change
    create_table :offer_regions do |t|
      t.integer :code
      t.string :name_cn
      t.string :name_en
      t.integer :parent_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

    add_index :offer_regions, :code, :unique => true
    add_index :offer_regions, :parent_id
  end
end
