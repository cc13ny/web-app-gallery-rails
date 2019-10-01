require 'rails_helper'

RSpec.describe "talks/edit", type: :view do
  before(:each) do
    @talk = assign(:talk, Talk.create!(
      :name => "MyString",
      :user => nil,
      :published => false
    ))
  end

  it "renders the edit talk form" do
    render

    assert_select "form[action=?][method=?]", talk_path(@talk), "post" do

      assert_select "input#talk_name[name=?]", "talk[name]"

      assert_select "input#talk_user_id[name=?]", "talk[user_id]"

      assert_select "input#talk_published[name=?]", "talk[published]"
    end
  end
end
