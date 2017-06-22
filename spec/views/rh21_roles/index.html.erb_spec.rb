require 'rails_helper'

RSpec.describe "rh21_roles/index", type: :view do
  before(:each) do
    assign(:rh21_roles, [
      Rh21Role.create!(
        :role => "MyText"
      ),
      Rh21Role.create!(
        :role => "MyText"
      )
    ])
  end

  it "renders a list of rh21_roles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
