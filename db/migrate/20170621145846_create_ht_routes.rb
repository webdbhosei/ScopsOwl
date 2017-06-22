class CreateHtRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :ht_routes do |t|
      t.string :name
      t.string :route_detail
      t.integer :chat_id

      t.timestamps
    end
  end
end
