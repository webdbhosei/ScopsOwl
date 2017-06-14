require 'rails_helper'

RSpec.describe "rh21_statuses/index", type: :view do
  before(:each) do
    assign(:rh21_statuses, [
      Rh21Status.create!(
        :status => "MyText"
      ),
      Rh21Status.create!(
        :status => "MyText"
      )
    ])
  end

  it "renders a list of rh21_statuses" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
