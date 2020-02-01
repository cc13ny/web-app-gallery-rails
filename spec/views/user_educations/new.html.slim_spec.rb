require 'rails_helper'

RSpec.describe "user_educations/new", type: :view do
  before(:each) do
    assign(:user_education, UserEducation.new(
      :user => nil,
      :school_name => "MyString",
      :degree => "MyString",
      :field_of_study => "MyString",
      :start_year => 1,
      :start_month => 1,
      :end_year => 1,
      :end_month => 1,
      :grade => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new user_education form" do
    render

    assert_select "form[action=?][method=?]", user_educations_path, "post" do

      assert_select "input#user_education_user_id[name=?]", "user_education[user_id]"

      assert_select "input#user_education_school_name[name=?]", "user_education[school_name]"

      assert_select "input#user_education_degree[name=?]", "user_education[degree]"

      assert_select "input#user_education_field_of_study[name=?]", "user_education[field_of_study]"

      assert_select "input#user_education_start_year[name=?]", "user_education[start_year]"

      assert_select "input#user_education_start_month[name=?]", "user_education[start_month]"

      assert_select "input#user_education_end_year[name=?]", "user_education[end_year]"

      assert_select "input#user_education_end_month[name=?]", "user_education[end_month]"

      assert_select "input#user_education_grade[name=?]", "user_education[grade]"

      assert_select "textarea#user_education_description[name=?]", "user_education[description]"
    end
  end
end
