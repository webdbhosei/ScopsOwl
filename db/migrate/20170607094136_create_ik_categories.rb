class CreateIkCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :ik_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
