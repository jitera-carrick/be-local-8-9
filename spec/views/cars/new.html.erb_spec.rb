require 'rails_helper'

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
      name: "MyString",
      description: "MyString",
      price: "9.99"
    ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do

      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[description]"

      assert_select "input[name=?]", "car[price]"
    end
  end
end
