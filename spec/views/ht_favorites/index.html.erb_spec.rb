require 'rails_helper'

RSpec.describe "ht_favorites/index", type: :view do
  before(:each) do
    assign(:ht_favorites, [
      HtFavorite.create!(
        :user_id => 2,
        :route_id => 3
      ),
      HtFavorite.create!(
        :user_id => 2,
        :route_id => 3
      )
    ])
  end

  it "renders a list of ht_favorites" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
