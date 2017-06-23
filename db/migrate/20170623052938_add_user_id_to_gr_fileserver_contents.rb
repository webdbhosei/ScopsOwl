class AddUserIdToGrFileserverContents < ActiveRecord::Migration[5.0]
  def change
    add_column :gr_fileserver_contents, :user_id, :integer
  end
end
