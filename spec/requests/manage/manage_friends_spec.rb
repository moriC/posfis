require 'spec_helper'

describe "Manage::Friends" do
  describe "GET /manage_friends" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get manage_friends_path
      response.status.should be(200)
    end
  end
end
