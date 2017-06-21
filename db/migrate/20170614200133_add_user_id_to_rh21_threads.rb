class AddUserIdToRh21Threads < ActiveRecord::Migration[5.0]
  def change
    add_index :rh21_threads, :user_id
  end
end
