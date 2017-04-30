require 'rails_helper'

RSpec.describe "lists/show", type: :view do
  before(:each) do
    @list = assign(:list, List.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
