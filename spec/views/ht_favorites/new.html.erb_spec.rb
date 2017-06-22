require 'rails_helper'

RSpec.describe "ht_favorites/new", type: :view do
  before(:each) do
    assign(:ht_favorite, HtFavorite.new(
      :user_id => 1,
      :route_id => 1
    ))
  end

  it "renders new ht_favorite form" do
    render

    assert_select "form[action=?][method=?]", ht_favorites_path, "post" do

      assert_select "input#ht_favorite_user_id[name=?]", "ht_favorite[user_id]"

      assert_select "input#ht_favorite_route_id[name=?]", "ht_favorite[route_id]"
    end
  end
end
