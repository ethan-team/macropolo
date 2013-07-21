class HomeController < ApplicationController
  def index
    
  end

  def search
  	@offers = Offer.all
  end
end
