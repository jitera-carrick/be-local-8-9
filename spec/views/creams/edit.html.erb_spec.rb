require 'rails_helper'

RSpec.describe "creams/edit", type: :view do
  before(:each) do
    @cream = assign(:cream, Cream.create!(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders the edit cream form" do
    render

    assert_select "form[action=?][method=?]", cream_path(@cream), "post" do

      assert_select "input[name=?]", "cream[name]"

      assert_select "input[name=?]", "cream[description]"

      assert_select "input[name=?]", "cream[price]"
    end
  end
end
