require 'rails_helper'

RSpec.describe "simples/new", type: :view do
  before(:each) do
    assign(:simple, Simple.new(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders new simple form" do
    render

    assert_select "form[action=?][method=?]", simples_path, "post" do

      assert_select "input[name=?]", "simple[name]"

      assert_select "input[name=?]", "simple[description]"

      assert_select "input[name=?]", "simple[price]"
    end
  end
end
