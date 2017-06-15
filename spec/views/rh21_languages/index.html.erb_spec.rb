require 'rails_helper'

RSpec.describe "rh21_languages/index", type: :view do
  before(:each) do
    assign(:rh21_languages, [
      Rh21Language.create!(
        :language => "MyText"
      ),
      Rh21Language.create!(
        :language => "MyText"
      )
    ])
  end

  it "renders a list of rh21_languages" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
