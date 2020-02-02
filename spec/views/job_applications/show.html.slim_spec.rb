require 'rails_helper'

RSpec.describe "job_applications/show", type: :view do
  before(:each) do
    @job_application = assign(:job_application, JobApplication.create!(
      :job => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
