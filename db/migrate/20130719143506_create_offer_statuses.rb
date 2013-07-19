class CreateOfferStatuses < ActiveRecord::Migration
  def change
    create_table :offer_statuses do |t|
      t.integer :code
      t.string :name_cn
      t.string :name_en

      t.timestamps
    end
  end
end
