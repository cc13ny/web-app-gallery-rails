require 'rails_helper'

RSpec.describe "talks/new", type: :view do
  before(:each) do
    assign(:talk, Talk.new(
      :name => "MyString",
      :user => nil,
      :published => false
    ))
  end

  it "renders new talk form" do
    render

    assert_select "form[action=?][method=?]", talks_path, "post" do

      assert_select "input#talk_name[name=?]", "talk[name]"

      assert_select "input#talk_user_id[name=?]", "talk[user_id]"

      assert_select "input#talk_published[name=?]", "talk[published]"
    end
  end
end
