class CreateGrFileserverContents < ActiveRecord::Migration[5.0]
  def change
    create_table :gr_fileserver_contents do |t|
      t.binary :file_content
      t.string :file_name
      t.string :file_type
      t.integer :file_size
      t.integer :file_permission

      t.timestamps
    end
  end
end
