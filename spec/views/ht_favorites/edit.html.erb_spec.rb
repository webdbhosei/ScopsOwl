require 'rails_helper'

RSpec.describe "ht_favorites/edit", type: :view do
  before(:each) do
    @ht_favorite = assign(:ht_favorite, HtFavorite.create!(
      :user_id => 1,
      :route_id => 1
    ))
  end

  it "renders the edit ht_favorite form" do
    render

    assert_select "form[action=?][method=?]", ht_favorite_path(@ht_favorite), "post" do

      assert_select "input#ht_favorite_user_id[name=?]", "ht_favorite[user_id]"

      assert_select "input#ht_favorite_route_id[name=?]", "ht_favorite[route_id]"
    end
  end
end
