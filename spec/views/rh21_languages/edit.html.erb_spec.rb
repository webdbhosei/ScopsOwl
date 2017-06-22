require 'rails_helper'

RSpec.describe "rh21_languages/edit", type: :view do
  before(:each) do
    @rh21_language = assign(:rh21_language, Rh21Language.create!(
      :language => "MyText"
    ))
  end

  it "renders the edit rh21_language form" do
    render

    assert_select "form[action=?][method=?]", rh21_language_path(@rh21_language), "post" do

      assert_select "textarea#rh21_language_language[name=?]", "rh21_language[language]"
    end
  end
end
