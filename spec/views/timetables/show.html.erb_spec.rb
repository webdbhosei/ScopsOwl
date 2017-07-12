require 'rails_helper'

RSpec.describe "timetables/show", type: :view do
  before(:each) do
    @timetable = assign(:timetable, Timetable.create!(
      :inbound => 2,
      :route_id => 3,
      :hour => 4,
      :min => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
