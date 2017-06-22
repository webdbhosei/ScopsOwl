class CreateEbaAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :eba_answers do |t|
      t.integer :question_id
      t.integer :user_id
      t.text :answer
      t.timestamp :uploaded_time

      t.timestamps
    end
  end
end
