require 'rails_helper'

RSpec.describe "rh21_languages/show", type: :view do
  before(:each) do
    @rh21_language = assign(:rh21_language, Rh21Language.create!(
      :language => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
