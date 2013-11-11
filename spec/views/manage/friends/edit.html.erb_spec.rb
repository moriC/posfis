require 'spec_helper'

describe "manage/friends/edit" do
  before(:each) do
    @manage_friend = assign(:manage_friend, stub_model(Manage::Friend,
      :from_user_id => 1,
      :to_user_id => 1
    ))
  end

  it "renders the edit manage_friend form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manage_friend_path(@manage_friend), "post" do
      assert_select "input#manage_friend_from_user_id[name=?]", "manage_friend[from_user_id]"
      assert_select "input#manage_friend_to_user_id[name=?]", "manage_friend[to_user_id]"
    end
  end
end
