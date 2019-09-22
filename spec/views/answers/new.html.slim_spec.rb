require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :question => nil,
      :text => "MyText",
      :user => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "textarea#answer_text[name=?]", "answer[text]"

      assert_select "input#answer_user_id[name=?]", "answer[user_id]"
    end
  end
end
