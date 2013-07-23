ActiveAdmin.register OfferReview do
 menu :parent => "Offer"  

    actions :all, :except => [:destroy]

  index :download_links => false do
    column :id
    column :offer
    column :booking
    column :user
    column :rating
    column :body
  end  
end
