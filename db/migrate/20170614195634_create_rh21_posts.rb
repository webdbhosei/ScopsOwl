class CreateRh21Posts < ActiveRecord::Migration[5.0]
  def change
    create_table :rh21_posts do |t|
      t.text :timestamp
      t.text :title
      t.text :content
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
