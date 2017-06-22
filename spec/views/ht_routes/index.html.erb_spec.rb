require 'rails_helper'

RSpec.describe "ht_routes/index", type: :view do
  before(:each) do
    assign(:ht_routes, [
      HtRoute.create!(
        :name => "Name",
        :route_detail => "Route Detail",
        :chat_id => 2
      ),
      HtRoute.create!(
        :name => "Name",
        :route_detail => "Route Detail",
        :chat_id => 2
      )
    ])
  end

  it "renders a list of ht_routes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Route Detail".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
