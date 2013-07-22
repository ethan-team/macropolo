ActiveAdmin.register OfferOwner do
  menu :parent => "Offer"
  actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :name
    column :name_en
    column :supplier_name
    column :phone
    column :mobile
    #column :fax
    column :email
    column "QQ", :sns_qq
    column "Skype", :sns_skype
    column "WhatApp", :sns_whatapp
    column "WeChat", :sns_wechat
    column "SNS Other", :sns_other
    #column :home_page
    #column :remark
    #column :delegation
    default_actions  
  end

  filter :name
  filter :name_en
  filter :supplier_name
  filter :email
  filter :sns_qq
  filter :sns_skype
  filter :sns_whatapp
  filter :sns_wechat
end
