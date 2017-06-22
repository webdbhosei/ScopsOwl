require 'rails_helper'

RSpec.describe "gr_fileserver_contents/new", type: :view do
  before(:each) do
    assign(:gr_fileserver_content, GrFileserverContent.new(
      :file_content => "",
      :file_name => "MyString",
      :file_type => "MyString",
      :file_size => 1,
      :file_permission => 1
    ))
  end

  it "renders new gr_fileserver_content form" do
    render

    assert_select "form[action=?][method=?]", gr_fileserver_contents_path, "post" do

      assert_select "input#gr_fileserver_content_file_content[name=?]", "gr_fileserver_content[file_content]"

      assert_select "input#gr_fileserver_content_file_name[name=?]", "gr_fileserver_content[file_name]"

      assert_select "input#gr_fileserver_content_file_type[name=?]", "gr_fileserver_content[file_type]"

      assert_select "input#gr_fileserver_content_file_size[name=?]", "gr_fileserver_content[file_size]"

      assert_select "input#gr_fileserver_content_file_permission[name=?]", "gr_fileserver_content[file_permission]"
    end
  end
end
