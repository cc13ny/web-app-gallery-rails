require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :text => "MyText",
      :user => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea#question_text[name=?]", "question[text]"

      assert_select "input#question_user_id[name=?]", "question[user_id]"
    end
  end
end
