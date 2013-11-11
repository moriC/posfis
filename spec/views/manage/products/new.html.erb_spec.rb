require 'spec_helper'

describe "manage/products/new" do
  before(:each) do
    assign(:manage_product, stub_model(Manage::Product).as_new_record)
  end

  it "renders new manage_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", manage_products_path, "post" do
    end
  end
end
