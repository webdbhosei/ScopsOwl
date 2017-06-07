class AddIkCategoryIdToIkMemos < ActiveRecord::Migration[5.0]
  def change
    add_column :ik_memos, :ik_category_id, :integer
  	IkMemo.reset_column_information
  end
end
