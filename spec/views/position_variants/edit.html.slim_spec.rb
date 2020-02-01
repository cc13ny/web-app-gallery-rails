require 'rails_helper'

RSpec.describe "position_variants/edit", type: :view do
  before(:each) do
    @position_variant = assign(:position_variant, PositionVariant.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit position_variant form" do
    render

    assert_select "form[action=?][method=?]", position_variant_path(@position_variant), "post" do

      assert_select "input#position_variant_name[name=?]", "position_variant[name]"
    end
  end
end
