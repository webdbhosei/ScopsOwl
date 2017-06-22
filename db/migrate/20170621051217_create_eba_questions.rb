class CreateEbaQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :eba_questions do |t|
      t.string :title
      t.integer :user_id
      t.string :classname
      t.timestamp :uploaded_time

      t.timestamps
    end
  end
end
