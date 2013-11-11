require 'spec_helper'

describe "manage/products/index" do
  before(:each) do
    assign(:manage_products, [
      stub_model(Manage::Product),
      stub_model(Manage::Product)
    ])
  end

  it "renders a list of manage/products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
