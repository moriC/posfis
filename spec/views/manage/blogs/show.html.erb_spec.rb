require 'spec_helper'

describe "manage/blogs/show" do
  before(:each) do
    @manage_blog = assign(:manage_blog, stub_model(Manage::Blog,
      :user_id => 1,
      :category_id => 2,
      :title => "Title",
      :content => "MyText",
      :condition => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
  end
end
