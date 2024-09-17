require 'rails_helper'

RSpec.describe "houses/edit", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders the edit house form" do
    render

    assert_select "form[action=?][method=?]", house_path(@house), "post" do

      assert_select "input[name=?]", "house[name]"

      assert_select "input[name=?]", "house[description]"

      assert_select "input[name=?]", "house[price]"
    end
  end
end
