class CreateCurrencyToRmbRates < ActiveRecord::Migration
  def change
    create_table :currency_to_rmb_rates do |t|
      t.references :currency_type
      t.float :rate
      t.boolean :reviewed

      t.timestamps
    end
    add_index :currency_to_rmb_rates, :currency_type_id
    add_index :currency_to_rmb_rates, :created_at
  end
end
