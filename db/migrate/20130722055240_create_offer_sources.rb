class CreateOfferSources < ActiveRecord::Migration
  def change
    create_table :offer_sources do |t|
      t.integer :offer_code
      t.integer :source_id
      t.string :source_uri
      t.text :original_introduction
      t.references :offer_source_type
      t.references :currency_type
      t.references :offer
      t.text :remark

      t.timestamps
    end
    add_index :offer_sources, :offer_source_type_id
    add_index :offer_sources, :currency_type_id
    add_index :offer_sources, :offer_id
  end
end
