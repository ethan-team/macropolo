# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer_owner do
    name "MyString"
    name_en "MyString"
    supplier_name "MyString"
    contact_person "MyString"
    phone "MyString"
    mobile "MyString"
    fax "MyString"
    email "MyString"
    sns_qq "MyString"
    sns_skype "MyString"
    sns_whatapp "MyString"
    sns_wechat "MyString"
    sns_other "MyString"
    home_page "MyString"
    remark "MyText"
    delegation false
  end
end
