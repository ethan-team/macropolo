class CreateCurrencyTypes < ActiveRecord::Migration
  def change
    create_table :currency_types do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
