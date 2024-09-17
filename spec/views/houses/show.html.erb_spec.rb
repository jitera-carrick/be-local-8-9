require 'rails_helper'

RSpec.describe "houses/show", type: :view do
  before(:each) do
    @house = assign(:house, House.create!(
      name: "Name",
      description: "Description",
      price: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
  end
end
