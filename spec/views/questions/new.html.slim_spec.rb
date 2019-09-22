require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :text => "MyText",
      :user => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea#question_text[name=?]", "question[text]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
