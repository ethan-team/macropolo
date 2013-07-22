class CreateOfferSourceTypes < ActiveRecord::Migration
  def change
    create_table :offer_source_types do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
