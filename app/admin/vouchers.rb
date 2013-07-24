ActiveAdmin.register Voucher do
   menu :parent => "Operation"
   actions :all, :except => [:destroy]


  index :download_links => false do
    column :id
    column :booking
    column :user
    column :name
    column :amount_in_rmb
    column :amount_used_in_rmb
    column :expired_date
  end

  filter :name
  filter :booking
  filter :user
  filter :amount_in_rmb
  filter :amount_used_in_rmb
  filter :expired_date

end
