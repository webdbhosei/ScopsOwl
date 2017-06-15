class CreateChatMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :chat_messages do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
