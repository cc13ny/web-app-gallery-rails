require 'rails_helper'

RSpec.describe "talks/show", type: :view do
  before(:each) do
    @talk = assign(:talk, Talk.create!(
      :name => "Name",
      :user => nil,
      :published => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
