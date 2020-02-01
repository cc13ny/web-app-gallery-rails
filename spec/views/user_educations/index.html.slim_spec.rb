require 'rails_helper'

RSpec.describe "user_educations/index", type: :view do
  before(:each) do
    assign(:user_educations, [
      UserEducation.create!(
        :user => nil,
        :school_name => "School Name",
        :degree => "Degree",
        :field_of_study => "Field Of Study",
        :start_year => 2,
        :start_month => 3,
        :end_year => 4,
        :end_month => 5,
        :grade => "Grade",
        :description => "MyText"
      ),
      UserEducation.create!(
        :user => nil,
        :school_name => "School Name",
        :degree => "Degree",
        :field_of_study => "Field Of Study",
        :start_year => 2,
        :start_month => 3,
        :end_year => 4,
        :end_month => 5,
        :grade => "Grade",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of user_educations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    assert_select "tr>td", :text => "Degree".to_s, :count => 2
    assert_select "tr>td", :text => "Field Of Study".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Grade".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
