class AddUserIdToCopiers < ActiveRecord::Migration
  def change
    add_column :copiers, :user_id, :integer
    add_index :copiers, :user_id
  end
end
