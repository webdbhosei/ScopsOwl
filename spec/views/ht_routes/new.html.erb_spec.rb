require 'rails_helper'

RSpec.describe "ht_routes/new", type: :view do
  before(:each) do
    assign(:ht_route, HtRoute.new(
      :name => "MyString",
      :route_detail => "MyString",
      :chat_id => 1
    ))
  end

  it "renders new ht_route form" do
    render

    assert_select "form[action=?][method=?]", ht_routes_path, "post" do

      assert_select "input#ht_route_name[name=?]", "ht_route[name]"

      assert_select "input#ht_route_route_detail[name=?]", "ht_route[route_detail]"

      assert_select "input#ht_route_chat_id[name=?]", "ht_route[chat_id]"
    end
  end
end
