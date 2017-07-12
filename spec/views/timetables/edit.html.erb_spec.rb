require 'rails_helper'

RSpec.describe "timetables/edit", type: :view do
  before(:each) do
    @timetable = assign(:timetable, Timetable.create!(
      :inbound => 1,
      :route_id => 1,
      :hour => 1,
      :min => 1
    ))
  end

  it "renders the edit timetable form" do
    render

    assert_select "form[action=?][method=?]", timetable_path(@timetable), "post" do

      assert_select "input#timetable_inbound[name=?]", "timetable[inbound]"

      assert_select "input#timetable_route_id[name=?]", "timetable[route_id]"

      assert_select "input#timetable_hour[name=?]", "timetable[hour]"

      assert_select "input#timetable_min[name=?]", "timetable[min]"
    end
  end
end
