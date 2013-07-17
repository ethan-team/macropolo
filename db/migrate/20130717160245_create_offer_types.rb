class CreateOfferTypes < ActiveRecord::Migration
  def change
    create_table :offer_types do |t|
      t.integer :code
      t.string :name_cn
      t.string :name_en

      t.timestamps
    end
    add_index :offer_types, :code, :unique => true
    add_index :offer_types, :name_cn, :unique => true
    add_index :offer_types, :name_en, :unique => true
  end
end
