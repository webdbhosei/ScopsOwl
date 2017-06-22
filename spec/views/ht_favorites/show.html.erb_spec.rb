require 'rails_helper'

RSpec.describe "ht_favorites/show", type: :view do
  before(:each) do
    @ht_favorite = assign(:ht_favorite, HtFavorite.create!(
      :user_id => 2,
      :route_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
