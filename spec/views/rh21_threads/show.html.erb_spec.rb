require 'rails_helper'

RSpec.describe "rh21_threads/show", type: :view do
  before(:each) do
    @rh21_thread = assign(:rh21_thread, Rh21Thread.create!(
      :title => "MyText",
      :subject => "MyText",
      :timestamp => "MyText",
      :content => "MyText",
      :quality => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
