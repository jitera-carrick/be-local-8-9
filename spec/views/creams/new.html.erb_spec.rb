require 'rails_helper'

RSpec.describe "creams/new", type: :view do
  before(:each) do
    assign(:cream, Cream.new(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders new cream form" do
    render

    assert_select "form[action=?][method=?]", creams_path, "post" do

      assert_select "input[name=?]", "cream[name]"

      assert_select "input[name=?]", "cream[description]"

      assert_select "input[name=?]", "cream[price]"
    end
  end
end
