class AddUserIdToRh21Threads < ActiveRecord::Migration[5.0]
  def change
    add_column :rh21_threads, :user_id, :integer
    add_column :rh21_threads, :language_id, :integer
  end
end
