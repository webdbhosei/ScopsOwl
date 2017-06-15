class CreateRh21Roles < ActiveRecord::Migration[5.0]
  def change
    create_table :rh21_roles do |t|
      t.text :role

      t.timestamps
    end
  end
end
