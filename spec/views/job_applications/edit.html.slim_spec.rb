require 'rails_helper'

RSpec.describe "job_applications/edit", type: :view do
  before(:each) do
    @job_application = assign(:job_application, JobApplication.create!(
      :job => nil,
      :user => nil
    ))
  end

  it "renders the edit job_application form" do
    render

    assert_select "form[action=?][method=?]", job_application_path(@job_application), "post" do

      assert_select "input#job_application_job_id[name=?]", "job_application[job_id]"

      assert_select "input#job_application_user_id[name=?]", "job_application[user_id]"
    end
  end
end
