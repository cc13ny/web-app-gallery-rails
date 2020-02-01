require 'rails_helper'

RSpec.describe "user_experiences/show", type: :view do
  before(:each) do
    @user_experience = assign(:user_experience, UserExperience.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
