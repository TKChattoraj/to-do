require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyText",
      :description => "MyText"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "textarea#item_name[name=?]", "item[name]"

      assert_select "textarea#item_description[name=?]", "item[description]"
    end
  end
end
