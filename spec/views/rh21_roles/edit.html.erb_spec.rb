require 'rails_helper'

RSpec.describe "rh21_roles/edit", type: :view do
  before(:each) do
    @rh21_role = assign(:rh21_role, Rh21Role.create!(
      :role => "MyText"
    ))
  end

  it "renders the edit rh21_role form" do
    render

    assert_select "form[action=?][method=?]", rh21_role_path(@rh21_role), "post" do

      assert_select "textarea#rh21_role_role[name=?]", "rh21_role[role]"
    end
  end
end
