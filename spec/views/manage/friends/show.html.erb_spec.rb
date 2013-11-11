require 'spec_helper'

describe "manage/friends/show" do
  before(:each) do
    @manage_friend = assign(:manage_friend, stub_model(Manage::Friend,
      :from_user_id => 1,
      :to_user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
