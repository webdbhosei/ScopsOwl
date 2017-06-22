class AddUserIdToRh21Posts < ActiveRecord::Migration[5.0]
  def change
    add_index :rh21_posts, :user_id
  end
end
