class CreateAvailibilities < ActiveRecord::Migration
  def change
    create_table :availibilities do |t|
      t.date :date
      t.references :offer
      t.references :availibility_type
      t.integer :price_entitiy_id #, , :polymorphic => true

    end
    add_index :availibilities, :date
    add_index :availibilities, :offer_id
    add_index :availibilities, :availibility_type_id
    add_index :availibilities, [:date,:offer_id], :unique => true
  end
end
