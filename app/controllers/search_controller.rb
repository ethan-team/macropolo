class SearchController < ApplicationController
  layout "search"

  def index
  	@offers = Offer.order("id").page(params[:page]).per(10)
  end 
end
