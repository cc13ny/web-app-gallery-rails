require 'rails_helper'

RSpec.describe "position_variants/show", type: :view do
  before(:each) do
    @position_variant = assign(:position_variant, PositionVariant.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
