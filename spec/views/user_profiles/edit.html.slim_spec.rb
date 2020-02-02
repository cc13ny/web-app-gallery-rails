require 'rails_helper'

RSpec.describe "user_profiles/edit", type: :view do
  before(:each) do
    @user_profile = assign(:user_profile, UserProfile.create!(
      :user => nil,
      :about => "MyText"
    ))
  end

  it "renders the edit user_profile form" do
    render

    assert_select "form[action=?][method=?]", user_profile_path(@user_profile), "post" do

      assert_select "input#user_profile_user_id[name=?]", "user_profile[user_id]"

      assert_select "textarea#user_profile_about[name=?]", "user_profile[about]"
    end
  end
end
