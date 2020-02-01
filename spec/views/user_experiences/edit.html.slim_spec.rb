require 'rails_helper'

RSpec.describe "user_experiences/edit", type: :view do
  before(:each) do
    @user_experience = assign(:user_experience, UserExperience.create!(
      :user => nil,
      :company_name => "MyString",
      :company => nil,
      :title => "MyString",
      :position_variant_id => 1,
      :start_year => 1,
      :start_month => 1,
      :end_year => 1,
      :end_month => 1,
      :present => "",
      :location => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit user_experience form" do
    render

    assert_select "form[action=?][method=?]", user_experience_path(@user_experience), "post" do

      assert_select "input#user_experience_user_id[name=?]", "user_experience[user_id]"

      assert_select "input#user_experience_company_name[name=?]", "user_experience[company_name]"

      assert_select "input#user_experience_company_id[name=?]", "user_experience[company_id]"

      assert_select "input#user_experience_title[name=?]", "user_experience[title]"

      assert_select "input#user_experience_position_variant_id[name=?]", "user_experience[position_variant_id]"

      assert_select "input#user_experience_start_year[name=?]", "user_experience[start_year]"

      assert_select "input#user_experience_start_month[name=?]", "user_experience[start_month]"

      assert_select "input#user_experience_end_year[name=?]", "user_experience[end_year]"

      assert_select "input#user_experience_end_month[name=?]", "user_experience[end_month]"

      assert_select "input#user_experience_present[name=?]", "user_experience[present]"

      assert_select "input#user_experience_location[name=?]", "user_experience[location]"

      assert_select "textarea#user_experience_description[name=?]", "user_experience[description]"
    end
  end
end
