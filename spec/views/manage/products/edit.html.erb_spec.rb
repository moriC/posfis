require 'spec_helper'

describe "manage/products/edit" do
  before(:each) do
    @manage_product = assign(:manage_product, stub_model(Manage::Product))
  end

  it "renders the edit manage_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manage_product_path(@manage_product), "post" do
    end
  end
end
