class AddModelIdToCopiers < ActiveRecord::Migration
  def change
    add_column :copiers, :model_id, :integer
    add_index :copiers, :model_id
  end
end
