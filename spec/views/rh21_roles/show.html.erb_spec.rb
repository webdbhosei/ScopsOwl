require 'rails_helper'

RSpec.describe "rh21_roles/show", type: :view do
  before(:each) do
    @rh21_role = assign(:rh21_role, Rh21Role.create!(
      :role => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
