require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      :business_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_business_name[name=?]", "company[business_name]"

      assert_select "textarea#company_description[name=?]", "company[description]"
    end
  end
end
