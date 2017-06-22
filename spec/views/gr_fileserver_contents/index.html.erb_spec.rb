require 'rails_helper'

RSpec.describe "gr_fileserver_contents/index", type: :view do
  before(:each) do
    assign(:gr_fileserver_contents, [
      GrFileserverContent.create!(
        :file_content => "",
        :file_name => "File Name",
        :file_type => "File Type",
        :file_size => 2,
        :file_permission => 3
      ),
      GrFileserverContent.create!(
        :file_content => "",
        :file_name => "File Name",
        :file_type => "File Type",
        :file_size => 2,
        :file_permission => 3
      )
    ])
  end

  it "renders a list of gr_fileserver_contents" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "File Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
