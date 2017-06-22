require 'rails_helper'

RSpec.describe "gr_fileserver_contents/show", type: :view do
  before(:each) do
    @gr_fileserver_content = assign(:gr_fileserver_content, GrFileserverContent.create!(
      :file_content => "",
      :file_name => "File Name",
      :file_type => "File Type",
      :file_size => 2,
      :file_permission => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/File Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
