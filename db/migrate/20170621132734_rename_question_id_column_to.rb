class RenameQuestionIdColumnTo < ActiveRecord::Migration[5.0]
  def change
    rename_column :eba_answers, :question_id, :eba_question_id
  end
end
