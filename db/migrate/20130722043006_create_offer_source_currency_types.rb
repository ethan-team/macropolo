class CreateOfferSourceCurrencyTypes < ActiveRecord::Migration
  def change
    create_table :offer_source_currency_types do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
