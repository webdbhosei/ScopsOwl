class CreateIkMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :ik_memos do |t|
      t.text :content

      t.timestamps
    end
  end
end
