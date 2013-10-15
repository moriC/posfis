require 'spec_helper'

describe "manage/blogs/index" do
  before(:each) do
    assign(:manage_blogs, [
      stub_model(Manage::Blog,
        :user_id => 1,
        :category_id => 2,
        :title => "Title",
        :content => "MyText",
        :condition => 3
      ),
      stub_model(Manage::Blog,
        :user_id => 1,
        :category_id => 2,
        :title => "Title",
        :content => "MyText",
        :condition => 3
      )
    ])
  end

  it "renders a list of manage/blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
