class HomeController < ApplicationController
  def index
    
  end

  def search
  	@offers = Offer.order("id").page(params[:page]).per(10)
  end
end
