class CreateHtFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :ht_favorites do |t|
      t.integer :user_id
      t.integer :route_id

      t.timestamps
    end
  end
end
