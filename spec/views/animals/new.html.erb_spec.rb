require 'rails_helper'

RSpec.describe "animals/new", type: :view do
  before(:each) do
    assign(:animal, Animal.new(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders new animal form" do
    render

    assert_select "form[action=?][method=?]", animals_path, "post" do

      assert_select "input[name=?]", "animal[name]"

      assert_select "input[name=?]", "animal[description]"

      assert_select "input[name=?]", "animal[price]"
    end
  end
end
