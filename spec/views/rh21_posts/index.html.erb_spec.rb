require 'rails_helper'

RSpec.describe "rh21_posts/index", type: :view do
  before(:each) do
    assign(:rh21_posts, [
      Rh21Post.create!(
        :timestamp => "MyText",
        :title => "MyText",
        :content => "MyText",
        :likes => 2,
        :dislikes => 3
      ),
      Rh21Post.create!(
        :timestamp => "MyText",
        :title => "MyText",
        :content => "MyText",
        :likes => 2,
        :dislikes => 3
      )
    ])
  end

  it "renders a list of rh21_posts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
