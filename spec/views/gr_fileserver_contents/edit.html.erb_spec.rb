require 'rails_helper'

RSpec.describe "gr_fileserver_contents/edit", type: :view do
  before(:each) do
    @gr_fileserver_content = assign(:gr_fileserver_content, GrFileserverContent.create!(
      :file_content => "",
      :file_name => "MyString",
      :file_type => "MyString",
      :file_size => 1,
      :file_permission => 1
    ))
  end

  it "renders the edit gr_fileserver_content form" do
    render

    assert_select "form[action=?][method=?]", gr_fileserver_content_path(@gr_fileserver_content), "post" do

      assert_select "input#gr_fileserver_content_file_content[name=?]", "gr_fileserver_content[file_content]"

      assert_select "input#gr_fileserver_content_file_name[name=?]", "gr_fileserver_content[file_name]"

      assert_select "input#gr_fileserver_content_file_type[name=?]", "gr_fileserver_content[file_type]"

      assert_select "input#gr_fileserver_content_file_size[name=?]", "gr_fileserver_content[file_size]"

      assert_select "input#gr_fileserver_content_file_permission[name=?]", "gr_fileserver_content[file_permission]"
    end
  end
end
