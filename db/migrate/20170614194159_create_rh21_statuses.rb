class CreateRh21Statuses < ActiveRecord::Migration[5.0]
  def change
    create_table :rh21_statuses do |t|
      t.text :status

      t.timestamps
    end
  end
end
