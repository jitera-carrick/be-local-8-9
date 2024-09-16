require 'rails_helper'

RSpec.describe "simples/edit", type: :view do
  before(:each) do
    @simple = assign(:simple, Simple.create!(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders the edit simple form" do
    render

    assert_select "form[action=?][method=?]", simple_path(@simple), "post" do

      assert_select "input[name=?]", "simple[name]"

      assert_select "input[name=?]", "simple[description]"

      assert_select "input[name=?]", "simple[price]"
    end
  end
end
