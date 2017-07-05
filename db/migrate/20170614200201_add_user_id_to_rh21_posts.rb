class AddUserIdToRh21Posts < ActiveRecord::Migration[5.0]
  def change
    add_column :rh21_posts, :user_id, :integer
    add_column :rh21_posts, :rh21_thread_id, :integer
    add_column :rh21_posts, :rh21_status_id, :integer
    add_column :rh21_posts, :rh21_language_id, :integer
  end
end
