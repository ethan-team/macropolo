class CreateOfferOwners < ActiveRecord::Migration
  def change
    create_table :offer_owners do |t|
      t.string :name_cn
      t.string :name_en
      t.string :supplier_name
      t.string :contact_person
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :email
      t.string :sns_qq
      t.string :sns_skype
      t.string :sns_whatapp
      t.string :sns_wechat
      t.string :sns_other
      t.string :home_page
      t.text :remark
      t.boolean :delegation

      t.timestamps
    end
  end
end
