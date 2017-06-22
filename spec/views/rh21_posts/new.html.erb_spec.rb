require 'rails_helper'

RSpec.describe "rh21_posts/new", type: :view do
  before(:each) do
    assign(:rh21_post, Rh21Post.new(
      :timestamp => "MyText",
      :title => "MyText",
      :content => "MyText",
      :likes => 1,
      :dislikes => 1
    ))
  end

  it "renders new rh21_post form" do
    render

    assert_select "form[action=?][method=?]", rh21_posts_path, "post" do

      assert_select "textarea#rh21_post_timestamp[name=?]", "rh21_post[timestamp]"

      assert_select "textarea#rh21_post_title[name=?]", "rh21_post[title]"

      assert_select "textarea#rh21_post_content[name=?]", "rh21_post[content]"

      assert_select "input#rh21_post_likes[name=?]", "rh21_post[likes]"

      assert_select "input#rh21_post_dislikes[name=?]", "rh21_post[dislikes]"
    end
  end
end
