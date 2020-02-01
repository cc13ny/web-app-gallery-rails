require 'rails_helper'

RSpec.describe "user_educations/show", type: :view do
  before(:each) do
    @user_education = assign(:user_education, UserEducation.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/School Name/)
    expect(rendered).to match(/Degree/)
    expect(rendered).to match(/Field Of Study/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Grade/)
    expect(rendered).to match(/MyText/)
  end
end
