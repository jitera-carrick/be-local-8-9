require 'rails_helper'

RSpec.describe "animals/edit", type: :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders the edit animal form" do
    render

    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do

      assert_select "input[name=?]", "animal[name]"

      assert_select "input[name=?]", "animal[description]"

      assert_select "input[name=?]", "animal[price]"
    end
  end
end
