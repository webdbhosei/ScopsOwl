class AddRh21LanguageIdToRh21Posts < ActiveRecord::Migration[5.0]
  def change
    add_index :rh21_posts, :rh21_language_id
  end
end
