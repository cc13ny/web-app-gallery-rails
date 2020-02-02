require 'rails_helper'

RSpec.describe "job_applications/new", type: :view do
  before(:each) do
    assign(:job_application, JobApplication.new(
      :job => nil,
      :user => nil
    ))
  end

  it "renders new job_application form" do
    render

    assert_select "form[action=?][method=?]", job_applications_path, "post" do

      assert_select "input#job_application_job_id[name=?]", "job_application[job_id]"

      assert_select "input#job_application_user_id[name=?]", "job_application[user_id]"
    end
  end
end
