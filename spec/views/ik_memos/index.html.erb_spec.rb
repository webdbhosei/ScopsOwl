require 'rails_helper'

RSpec.describe "ik_memos/index", type: :view do
  feature 'in the ik_memos/index screen,' do
    scenario 'When index is displayed, database creation message should appear.' do
      visit ik_memos_path   # Ik Memos index page
      # click_on (t :click_here )    # click Click Here link
      expect(page).to have_content 'This is a sample page of database creation.'
    end
  end

end
