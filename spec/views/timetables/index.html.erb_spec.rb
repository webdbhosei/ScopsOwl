require 'rails_helper'

RSpec.describe "timetables/index", type: :view do
  before(:each) do
    assign(:timetables, [
      Timetable.create!(
        :inbound => 2,
        :route_id => 3,
        :hour => 4,
        :min => 5
      ),
      Timetable.create!(
        :inbound => 2,
        :route_id => 3,
        :hour => 4,
        :min => 5
      )
    ])
  end

  it "renders a list of timetables" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
