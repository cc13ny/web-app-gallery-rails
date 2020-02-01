require 'rails_helper'

RSpec.describe "position_variants/index", type: :view do
  before(:each) do
    assign(:position_variants, [
      PositionVariant.create!(
        :name => "Name"
      ),
      PositionVariant.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of position_variants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
