class AddRh21StatusIdToRh21Posts < ActiveRecord::Migration[5.0]
  def change
    add_index :rh21_posts, :rh21_status_id
  end
end
