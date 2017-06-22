class AddRh21ThreadIdToRh21Posts < ActiveRecord::Migration[5.0]
  def change
    add_index :rh21_posts, :rh21_thread_id
  end
end
