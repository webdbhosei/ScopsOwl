require 'rails_helper'

RSpec.describe "rh21_roles/new", type: :view do
  before(:each) do
    assign(:rh21_role, Rh21Role.new(
      :role => "MyText"
    ))
  end

  it "renders new rh21_role form" do
    render

    assert_select "form[action=?][method=?]", rh21_roles_path, "post" do

      assert_select "textarea#rh21_role_role[name=?]", "rh21_role[role]"
    end
  end
end
