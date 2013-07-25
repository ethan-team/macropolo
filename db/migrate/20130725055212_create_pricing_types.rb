class CreatePricingTypes < ActiveRecord::Migration
  def change
    create_table :pricing_types do |t|
      t.integer :code
      t.string :name
      t.string :name_en

      t.timestamps
    end
  end
end
