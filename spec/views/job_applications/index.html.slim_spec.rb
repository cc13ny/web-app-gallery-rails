require 'rails_helper'

RSpec.describe "job_applications/index", type: :view do
  before(:each) do
    assign(:job_applications, [
      JobApplication.create!(
        :job => nil,
        :user => nil
      ),
      JobApplication.create!(
        :job => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of job_applications" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
