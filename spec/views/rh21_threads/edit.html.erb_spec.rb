require 'rails_helper'

RSpec.describe "rh21_threads/edit", type: :view do
  before(:each) do
    @rh21_thread = assign(:rh21_thread, Rh21Thread.create!(
      :title => "MyText",
      :subject => "MyText",
      :timestamp => "MyText",
      :content => "MyText",
      :quality => 1
    ))
  end

  it "renders the edit rh21_thread form" do
    render

    assert_select "form[action=?][method=?]", rh21_thread_path(@rh21_thread), "post" do

      assert_select "textarea#rh21_thread_title[name=?]", "rh21_thread[title]"

      assert_select "textarea#rh21_thread_subject[name=?]", "rh21_thread[subject]"

      assert_select "textarea#rh21_thread_timestamp[name=?]", "rh21_thread[timestamp]"

      assert_select "textarea#rh21_thread_content[name=?]", "rh21_thread[content]"

      assert_select "input#rh21_thread_quality[name=?]", "rh21_thread[quality]"
    end
  end
end
