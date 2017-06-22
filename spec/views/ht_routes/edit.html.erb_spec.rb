require 'rails_helper'

RSpec.describe "ht_routes/edit", type: :view do
  before(:each) do
    @ht_route = assign(:ht_route, HtRoute.create!(
      :name => "MyString",
      :route_detail => "MyString",
      :chat_id => 1
    ))
  end

  it "renders the edit ht_route form" do
    render

    assert_select "form[action=?][method=?]", ht_route_path(@ht_route), "post" do

      assert_select "input#ht_route_name[name=?]", "ht_route[name]"

      assert_select "input#ht_route_route_detail[name=?]", "ht_route[route_detail]"

      assert_select "input#ht_route_chat_id[name=?]", "ht_route[chat_id]"
    end
  end
end
