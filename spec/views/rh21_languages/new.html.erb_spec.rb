require 'rails_helper'

RSpec.describe "rh21_languages/new", type: :view do
  before(:each) do
    assign(:rh21_language, Rh21Language.new(
      :language => "MyText"
    ))
  end

  it "renders new rh21_language form" do
    render

    assert_select "form[action=?][method=?]", rh21_languages_path, "post" do

      assert_select "textarea#rh21_language_language[name=?]", "rh21_language[language]"
    end
  end
end
