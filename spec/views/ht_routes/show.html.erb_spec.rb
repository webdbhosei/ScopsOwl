require 'rails_helper'

RSpec.describe "ht_routes/show", type: :view do
  before(:each) do
    @ht_route = assign(:ht_route, HtRoute.create!(
      :name => "Name",
      :route_detail => "Route Detail",
      :chat_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Route Detail/)
    expect(rendered).to match(/2/)
  end
end
