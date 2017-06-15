require 'rails_helper'

RSpec.describe "rh21_statuses/edit", type: :view do
  before(:each) do
    @rh21_status = assign(:rh21_status, Rh21Status.create!(
      :status => "MyText"
    ))
  end

  it "renders the edit rh21_status form" do
    render

    assert_select "form[action=?][method=?]", rh21_status_path(@rh21_status), "post" do

      assert_select "textarea#rh21_status_status[name=?]", "rh21_status[status]"
    end
  end
end
