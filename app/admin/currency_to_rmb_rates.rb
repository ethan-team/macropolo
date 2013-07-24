ActiveAdmin.register CurrencyToRmbRate do
   menu :parent => "Operation"
   actions :all, :except => [:destroy]
   
   index :download_links => false do
    column :offer_source_currency_type
    column :rate 
    column :created_at
  end 
end
