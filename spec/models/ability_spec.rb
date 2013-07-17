require 'spec_helper'
require "cancan/matchers"

describe Ability do

end



=begin
describe "User" do
  describe "abilities" do
    subject { ability }
    let(:ability){ Ability.new(user) }
    let(:user){ nil }

    context "when is an account manager" do
      let(:user){ Factory(:super_admin) }

      it{ should be_able_to(:manage, User.new) }
    end
  end
end
=end


