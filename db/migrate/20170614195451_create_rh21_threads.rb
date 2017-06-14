class CreateRh21Threads < ActiveRecord::Migration[5.0]
  def change
    create_table :rh21_threads do |t|
      t.text :title
      t.text :subject
      t.text :timestamp
      t.text :content
      t.integer :quality

      t.timestamps
    end
  end
end
