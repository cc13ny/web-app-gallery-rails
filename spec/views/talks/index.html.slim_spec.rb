require 'rails_helper'

RSpec.describe "talks/index", type: :view do
  before(:each) do
    assign(:talks, [
      Talk.create!(
        :name => "Name",
        :user => nil,
        :published => false
      ),
      Talk.create!(
        :name => "Name",
        :user => nil,
        :published => false
      )
    ])
  end

  it "renders a list of talks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
