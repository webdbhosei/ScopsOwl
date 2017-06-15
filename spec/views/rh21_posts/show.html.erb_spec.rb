require 'rails_helper'

RSpec.describe "rh21_posts/show", type: :view do
  before(:each) do
    @rh21_post = assign(:rh21_post, Rh21Post.create!(
      :timestamp => "MyText",
      :title => "MyText",
      :content => "MyText",
      :likes => 2,
      :dislikes => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
