class CreateTimetables < ActiveRecord::Migration[5.0]
  def change
    create_table :timetables do |t|
      t.integer :inbound
      t.integer :route_id
      t.integer :hour
      t.integer :min

      t.timestamps
    end
  end
end
