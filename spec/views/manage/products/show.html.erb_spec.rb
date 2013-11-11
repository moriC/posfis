require 'spec_helper'

describe "manage/products/show" do
  before(:each) do
    @manage_product = assign(:manage_product, stub_model(Manage::Product))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
