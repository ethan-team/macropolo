require 'spec_helper'

describe OffersController do

  describe "GET 'show'" do
    it "returns http success" do
      #get 'show'
      get :show, :id => 0
      response.should be_success
    end
  end

end
