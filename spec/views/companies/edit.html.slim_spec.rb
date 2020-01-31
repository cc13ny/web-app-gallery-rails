require 'rails_helper'

RSpec.describe "companies/edit", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :business_name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_business_name[name=?]", "company[business_name]"

      assert_select "textarea#company_description[name=?]", "company[description]"
    end
  end
end
