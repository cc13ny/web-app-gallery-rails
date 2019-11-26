require 'rails_helper'

RSpec.describe "job_applications/edit", type: :view do
  before(:each) do
    @job_application = assign(:job_application, JobApplication.create!())
  end

  it "renders the edit job_application form" do
    render

    assert_select "form[action=?][method=?]", job_application_path(@job_application), "post" do
    end
  end
end
