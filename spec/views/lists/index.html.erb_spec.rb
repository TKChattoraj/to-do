require 'rails_helper'

RSpec.describe "lists/index", type: :view do
  before(:each) do
    assign(:lists, [
      List.create!(),
      List.create!()
    ])
  end

  it "renders a list of lists" do
    render
  end
end
