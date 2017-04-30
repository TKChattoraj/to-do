require 'rails_helper'

RSpec.describe "lists/new", type: :view do
  before(:each) do
    assign(:list, List.new())
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do
    end
  end
end
