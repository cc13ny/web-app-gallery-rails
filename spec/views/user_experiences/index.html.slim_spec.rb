require 'rails_helper'

RSpec.describe "user_experiences/index", type: :view do
  before(:each) do
    assign(:user_experiences, [
      UserExperience.create!(
        :user => nil,
        :company_name => "Company Name",
        :company => nil,
        :title => "Title",
        :position_variant_id => 2,
        :start_year => 3,
        :start_month => 4,
        :end_year => 5,
        :end_month => 6,
        :present => "",
        :location => "Location",
        :description => "MyText"
      ),
      UserExperience.create!(
        :user => nil,
        :company_name => "Company Name",
        :company => nil,
        :title => "Title",
        :position_variant_id => 2,
        :start_year => 3,
        :start_month => 4,
        :end_year => 5,
        :end_month => 6,
        :present => "",
        :location => "Location",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of user_experiences" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
