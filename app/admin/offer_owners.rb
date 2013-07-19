ActiveAdmin.register OfferOwner do
  menu :parent => "Offer"

  index :download_links => false do
    column :id
    column :name_cn
    column :name_en
    column :supplier_name
    column :phone
    column :mobile
    column :fax
    column :email
    column "QQ", :sns_qq
    column "Skype", :sns_skype
    column "WhatApp", :sns_whatapp
    column "WeChat", :sns_wechat
    column "SNS Other", :sns_other
    column :home_page
    column :remark
    column :delegation  
  end
end
