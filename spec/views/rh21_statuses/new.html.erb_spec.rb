require 'rails_helper'

RSpec.describe "rh21_statuses/new", type: :view do
  before(:each) do
    assign(:rh21_status, Rh21Status.new(
      :status => "MyText"
    ))
  end

  it "renders new rh21_status form" do
    render

    assert_select "form[action=?][method=?]", rh21_statuses_path, "post" do

      assert_select "textarea#rh21_status_status[name=?]", "rh21_status[status]"
    end
  end
end
