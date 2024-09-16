require 'rails_helper'

RSpec.describe "creams/index", type: :view do
  before(:each) do
    assign(:creams, [
      Cream.create!(
        name: "Name",
        description: "Description",
        price: "9.99"
      ),
      Cream.create!(
        name: "Name",
        description: "Description",
        price: "9.99"
      )
    ])
  end

  it "renders a list of creams" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
