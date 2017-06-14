require 'rails_helper'

RSpec.describe "rh21_statuses/show", type: :view do
  before(:each) do
    @rh21_status = assign(:rh21_status, Rh21Status.create!(
      :status => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
