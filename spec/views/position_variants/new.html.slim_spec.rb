require 'rails_helper'

RSpec.describe "position_variants/new", type: :view do
  before(:each) do
    assign(:position_variant, PositionVariant.new(
      :name => "MyString"
    ))
  end

  it "renders new position_variant form" do
    render

    assert_select "form[action=?][method=?]", position_variants_path, "post" do

      assert_select "input#position_variant_name[name=?]", "position_variant[name]"
    end
  end
end
