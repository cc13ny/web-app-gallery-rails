require 'rails_helper'

RSpec.describe "user_profiles/new", type: :view do
  before(:each) do
    assign(:user_profile, UserProfile.new(
      :user => nil,
      :about => "MyText"
    ))
  end

  it "renders new user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profiles_path, "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "textarea#user_profile_about[name=?]", "user_profile[about]"
    end
  end
end
