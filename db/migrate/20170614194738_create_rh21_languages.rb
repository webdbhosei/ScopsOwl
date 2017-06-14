class CreateRh21Languages < ActiveRecord::Migration[5.0]
  def change
    create_table :rh21_languages do |t|
      t.text :language

      t.timestamps
    end
  end
end
