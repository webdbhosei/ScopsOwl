require 'rails_helper'

RSpec.describe "rh21_threads/index", type: :view do
  before(:each) do
    assign(:rh21_threads, [
      Rh21Thread.create!(
        :title => "MyText",
        :subject => "MyText",
        :timestamp => "MyText",
        :content => "MyText",
        :quality => 2
      ),
      Rh21Thread.create!(
        :title => "MyText",
        :subject => "MyText",
        :timestamp => "MyText",
        :content => "MyText",
        :quality => 2
      )
    ])
  end

  it "renders a list of rh21_threads" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
