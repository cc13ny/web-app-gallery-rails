require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :body => "MyText",
      :published => false
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "textarea#article_body[name=?]", "article[body]"

      assert_select "input#article_published[name=?]", "article[published]"
    end
  end
end
